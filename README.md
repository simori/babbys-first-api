"# babbys-first-api" 
Tämä api näyttää käyttäjälle reseptejä. Apin kautta pystyy lisäämään tietokantaan
omia reseptejä ja hakemaan sieltä
(Pitää alustaa ensin MySQL-tietokanta ajamalla AlustaTietokanta.sql-tiedosto)

Api-kutsut: 

GET /
-palauttaa pääsivun

GET /haku
-palauttaa hakusivun, josta pystyy hakemaan reseptejä tietokannasta

GET /reseptit
-sivu, josta tulee näkyville kaikki reseptit

GET /reseptit/:id
-hakee tietokannasta reseptin parametrina annetulla id:llä ja palauttaa sen.
Palauttaa virheilmoituksen, jos ID:llä ei löydy reseptiä tietokannasta.

GET /lisaaresepti
-palauttaa sivun, jonka kautta voi lisätä tietokantaan uuden reseptin.

GET /admin
-palauttaa sivun, jossa linkki reseptin lisäykseen

POST /lisaaresepti
-lisää tietokantaan uusi resepti. Jos tulee virhe, palauttaa statuksen 500
pyynnön runko: {"nimi":"[reseptin nimi]","kuvaus":"[reseptin kuvaus]"}

POST /haku
-hakee tietokannasta reseptejä annetulla hakusanalla, virheen tullessa status 500.
Jos ei hakutuloksia, ilmoittaa käyttäjälle asiasta.
pyynnön runko: {"hakusana":"[hakusana jolla haluat hakea reseptejä]"}
