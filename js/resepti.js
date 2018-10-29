var mysql = require('mysql');

// Tietokantayhteys
var con = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "password",
    database: "resepti_db"
});

con.connect(function(err) {
    if (err) throw err;
    con.query("SELECT * FROM resepti", function (err, result, fields) {
        if (err) throw err;
        console.log("pöö");
    });
});

function lisaaResepti() {
    var nimi = document.getElementById("nimi").value;
    var kuvaus = document.getElementById("kuvaus").value;
    con.query('INSERT INTO resepti_db (nimi, kuvaus) VALUES (nimi, dessu) ', function (err, res, fields) {
        if (err) throw (err);

    });
    con.end();
}
