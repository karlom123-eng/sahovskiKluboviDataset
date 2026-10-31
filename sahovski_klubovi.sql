CREATE TABLE klub (
    kod VARCHAR(10) PRIMARY KEY,
    naziv VARCHAR(100),
    grad VARCHAR(50),
    osnutak INT,
    predsjednik VARCHAR(100),
    brojClanova INT,
    liga VARCHAR(50),
    adresa VARCHAR(100)
);

CREATE TABLE igrac (
    id SERIAL PRIMARY KEY,
    klubKod VARCHAR(10) REFERENCES klub(kod),
    ime VARCHAR(50),
    prezime VARCHAR(50),
    fideRejting INT,
    titula VARCHAR(10),
    godinaRodjenja INT
);

INSERT INTO klub (kod, naziv, grad, osnutak, predsjednik, brojClanova, liga, adresa) VALUES
('HASK', 'HAŠK Mladost', 'Zagreb', 1903, 'Miro Pavlović', 16, '5.A liga Centar', 'Savska cesta 28'),
('SKZG', 'ŠK Zagreb', 'Zagreb', 1886, 'Branko Rogulj', 42, '1.A hrvatska šahovska liga', 'Masarykova 4'),
('MORNAR', 'ŠK Mornar', 'Split', 1945, 'Miro Bobanac', 38, '1.A hrvatska šahovska liga', 'Riva 12'),
('LIBURNIJA', 'ŠK Liburnija', 'Rijeka', 1950, 'Branko Brdar', 25, '1.A hrvatska šahovska liga', 'Korzo 15'),
('SESVETE', 'ŠK Sesvete Agroproteinka', 'Zagreb', 1978, 'Miro Tesla', 28, '1.A hrvatska šahovska liga', 'Trg Dragutina Domjanića 6'),
('OSIJEK', 'ŠK Osijek', 'Osijek', 1921, 'Branko Mravunac', 31, '1.A hrvatska šahovska liga', 'Europska avenija 8'),
('ZADAR', 'ŠK Zadar', 'Zadar', 1934, 'Josip Bubičić', 22, '2. hrvatska šahovska liga - Jug', 'Obala kneza Branimira 7'),
('PULA', 'ŠK Pula', 'Pula', 1947, 'Valter Valković', 20, '1.B hrvatska šahovska liga', 'Giardini 2'),
('VARTEKS', 'ŠK Varaždin', 'Varaždin', 1910, 'Max Poljan', 24, '2. hrvatska šahovska liga - Centar', 'Kapucinski trg 3'),
('LIBERTAS', 'ŠK Libertas', 'Dubrovnik', 1930, 'Bajro Sarić', 26, '1.B hrvatska šahovska liga', 'Stradun 20');

INSERT INTO igrac (klubKod, ime, prezime, fideRejting, titula, godinaRodjenja) VALUES
('HASK', 'Ivan', 'Šarić', 2623, 'GM', 1990),
('HASK', 'Zdenko', 'Kožul', 2483, 'GM', 1966),
('HASK', 'Alojzije', 'Janković', 2560, 'GM', 1983),
('SKZG', 'Goran', 'Dizdar', 2483, 'GM', 1958),
('SKZG', 'Zlatko', 'Klarić', 2340, 'GM', 1956),
('SKZG', 'Robert', 'Zelčić', 2445, 'GM', 1965),
('MORNAR', 'Ante', 'Brkić', 2610, 'GM', 1988),
('MORNAR', 'Ante', 'Šarić', 2469, 'GM', 1984),
('LIBURNIJA', 'Ognjen', 'Cvitan', 2392, 'GM', 1961),
('LIBURNIJA', 'Jadranko', 'Plenča', 2415, 'IM', 1949),
('SESVETE', 'Saša', 'Martinović', 2548, 'GM', 1991),
('SESVETE', 'Zoran', 'Jovanović', 2492, 'GM', 1979),
('OSIJEK', 'Hrvoje', 'Stević', 2513, 'GM', 1980),
('OSIJEK', 'Davorin', 'Kuljašević', 2539, 'GM', 1986),
('ZADAR', 'Blažimir', 'Kovačević', 2367, 'GM', 1973),
('ZADAR', 'Saša', 'Režan', 2410, 'IM', 1989),
('PULA', 'Nenad', 'Ferara', 2235, 'FM', 1975),
('PULA', 'Miroslav', 'Žufić', 2380, 'IM', 1972),
('VARTEKS', 'Mladen', 'Palac', 2455, 'GM', 1971),
('LIBERTAS', 'Ivan', 'Galić', 2420, 'IM', 1985);
