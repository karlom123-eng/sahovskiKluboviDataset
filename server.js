const express = require('express');
const path = require('path');
const db = require('./db');

const app = express();
const PORT = 3000;

app.use(express.static(path.join(__dirname, 'public')));
app.get('/datatable.html', (req, res) => {
    res.sendFile(path.join(__dirname, 'public', 'datatable.html'));
});


app.listen(PORT, () => {
    console.log(`Server pokrenut: http://localhost:${PORT}`);
});
app.get('/api/klubovi', async (req, res) => {
    try {
        const rezultat = await db.query(`
            SELECT
                k.kod,
                k.naziv,
                k.grad,
                k.osnutak,
                k.predsjednik,
                k.brojclanova AS "brojClanova",
                k.liga,
                k.adresa,
                i.ime,
                i.prezime,
                i.fiderejting AS "fideRejting",
                i.titula,
                i.godinarodjenja AS "godinaRodjenja"
            FROM klub k
            LEFT JOIN igrac i ON i.klubkod = k.kod
            ORDER BY k.naziv;
        `);

        res.json(rezultat.rows);
    } catch (error) {
        console.error(error);
        res.status(500).send('Greška pri dohvaćanju klubova.');
    }
});