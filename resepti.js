var mysql = require('mysql');
var express = require('express');
var bodyParser = require('body-parser');

var app = express();

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));

// Tietokantayhteys
var con = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "password",
    database: "resepti_db"
});

con.connect(function(err) {
    if (err) throw err;
    else console.log("Yhdistetty tietokantaan!");
});

// API
app.get('/', function (req, res) {
    res.sendfile('html/index.html');
})

app.get('/haku', function (req, res) {
    res.sendfile('html/haku.html');
})

app.post('/lisaaresepti', function (req, res, next) {
    var nimi = req.body.nimi;
    var dessu = req.body.kuvaus;
    var sql = 'INSERT INTO resepti (nimi, kuvaus) VALUES (\'' + nimi + '\', \'' + dessu + '\')';
    con.query(sql, function (err, res, fields) {
        if (err) throw (err);
    });
    res.sendfile('html/index.html');
})

app.post('/haku', function (req, res, next) {
    //console.log("Postipyyntö: " + req.body.nimi + " " + req.body.kuvaus);
    var hakusana = req.body.hakusana;
    var sql = "SELECT nimi, kuvaus FROM resepti WHERE kuvaus LIKE \'hakusana\'";

    haeYksiResepti(function (err, result) {
        if (err) console.log("Database error!" + err);
        else res.send(result);
    }, hakusana);

})

app.get('/reseptit', function (req, res) {
    haeReseptit(function (err, result) {
        if (err) {
            console.log("Database error!");
            res.status(500).end();
        }
        else res.send(result);
    });
})

app.get('/reseptit/:id', function (req, res) {
    var id = req.params.id;
    haeId(function (err, result) {
        if (err) {
            console.log("Database error!");
            res.status(500).end();
        }
        else res.send(result);
    }, id);

})

app.get('/lisaaresepti', function (req, res) {
    res.sendfile('html/lisaaresepti.html');
})

app.get('/admin', function (req, res) {
    res.sendfile('html/admin.html');
})

app.get('/db', function (req, res) {
    res.send(result);
})
// API poäättyy

// Hae ID:n perusteella
var haeId = function(callback, id) {

    var sql = 'SELECT nimi, kuvaus FROM resepti WHERE id = ?';
    var prm = [id];
    con.query(sql, [prm], function (err, res, fields) {
        var html = '';
        if (err) throw (err);

        if (res.length) {
            var table =''; // html tänne

            // luodaan html-taulukko.
            for(var i=0; i<res.length; i++){
                table +='<tr><td>'+ res[i].nimi +'</td><td>'+ res[i].kuvaus +'</td></tr>';
            }
            html ='<table border="1"><tr><th>Nimi</th><th>Resepti</th></tr>'+ table +'</table>';
        }
        else { // Jos reseptiä ei löydy
            html = 'Ei löytynyt reseptiä kyseisellä ID:llä!';
        }

        callback(null, html);
    });
};

//Haetaan kaikki reseptit
var result = [];
var haeReseptit = function(callback) {

    con.query('SELECT nimi, kuvaus FROM resepti', function (err, res, fields) {
        var html = '';
        if (err) return callback(err);

        if (res.length) {
            var table =''; // html tänne

            // luodaan html-taulukko.
            for(var i=0; i<res.length; i++){
                table +='<tr><td>'+ res[i].nimi +'</td><td>'+ res[i].kuvaus +'</td></tr>';
            }
            html ='<table border="1"><tr><th>Nimi</th><th>Resepti</th></tr>'+ table +'</table>';
        }
        callback(null, html);
    });
};

// Haetaan reseptejä hakusanalla
var haeYksiResepti = function(callback, hakusana) {
    var sql = "SELECT nimi, kuvaus FROM resepti WHERE kuvaus LIKE \'%" +hakusana+ "%\' OR nimi LIKE \'%" +hakusana+ "%\'";
    console.log(sql);
    con.query(sql, function (err, res, fields) {
        var html = '';
        if (err) return callback(err);

        if (res.length) {
            var table =''; // html tänne

            // luodaan html-taulukko.
            for(var i=0; i<res.length; i++){
                table +='<tr><td>'+ res[i].nimi +'</td><td>'+ res[i].kuvaus +'</td></tr>';
            }
            html ='<table border="1"><tr><th>Nimi</th><th>Resepti</th></tr>'+ table +'</table>';
        }
        else {
            html = "Ei tuloksia!"
        }
        callback(null, html);
    });
}

// Lisätään resepti tietokantaan
var lisaaResepti = function(callback, nimi, dessu) {
    var sql = 'INSERT INTO resepti_db (nimi, kuvaus) VALUES ?';
    var val = [nimi, dessu];

    con.query(sql, [val], function (err, res, fields) {
        if (err) {
            alert('Ei onnistunut lisäys!');
            throw (err);
        }
        else {
            alert("Lisättiin onnistuneesti " + nimi);
        }
        callback(null);
    });
}

// servu
var server = app.listen(8081, function () {
    var host = server.address().address
    var port = server.address().port

    console.log("Example app listening at http://%s:%s", host, port)
})