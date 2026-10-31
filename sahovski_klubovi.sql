DROP TABLE IF EXISTS igrac;
DROP TABLE IF EXISTS klub;

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
('SKZG', 'ŠK Zagreb', 'Zagreb', 1886, 'Branko Rogulj', 42, '1.A hrvatska šahovska liga', 'Masarykova 4'),
('PEPER', 'ŠK Petar Sedlar - Pepe', 'Kaštel Novi', 1970, 'Petar Sedlar', 25, '1.B hrvatska šahovska liga', 'Obala kralja Tomislava 12'),
('SOLIN', 'GŠK Solin-Cemex', 'Solin', 1946, 'Ivan Marin', 35, '1.A hrvatska šahovska liga', 'Kralja Zvonimira 50'),
('PULA', 'ŠK Pula', 'Pula', 1947, 'Valter Valković', 20, '1.B hrvatska šahovska liga', 'Giardini 2'),
('POZEGA', 'ŠK Požega', 'Požega', 1925, 'Branko Mravunac', 30, '2. hrvatska šahovska liga - Istok', 'Trg Svetog Trojstva 1'),
('STRIDON', 'ŠK Stridon', 'Štrigova', 1975, 'Ivan Novak', 22, '2. hrvatska šahovska liga - Sjever', 'Štrigova 100'),
('RIJEKA', 'ŠK Rijeka', 'Rijeka', 1932, 'Božidar Brdar', 45, '1.A hrvatska šahovska liga', 'Riva Boduli 1'),
('FERIT', 'ŠK FERIT-Osijek', 'Osijek', 1980, 'Josip Balen', 38, '1.A hrvatska šahovska liga', 'Trg bana Josipa Jelačića 3'),
('DJAKOVIK', 'ŠK Đuro Đaković', 'Slavonski Brod', 1928, 'Zlatko Klarić', 28, '1.B hrvatska šahovska liga', 'Petra Svačića 2'),
('BRDA', 'ŠK Brda', 'Split', 1968, 'Mirko Šundov', 32, '2. hrvatska šahovska liga - Jug', 'Vukovarska 140');

INSERT INTO igrac (klubKod, ime, prezime, fideRejting, titula, godinaRodjenja) VALUES
('SKZG', 'Zdenko', 'Kožul', 2548, 'GM', 1966),
('PEPER', 'Bogdan', 'Lalić', 2456, 'GM', 1964),
('SOLIN', 'Davor', 'Rogić', 2450, 'GM', 1971),
('PULA', 'Nenad', 'Ferčec', 2422, 'GM', 1961),
('POZEGA', 'Mladen', 'Muše', 2390, 'GM', 1963),
('STRIDON', 'Dražen', 'Muše', 2377, 'IM', 1971),
('RIJEKA', 'Boris', 'Golubović', 2335, 'IM', 1973),
('FERIT', 'Nenad', 'Mrkonjić', 2334, 'IM', 1966),
('DJAKOVIK', 'Robert', 'Dabo-Peranić', 2334, 'FM', 1970),
('BRDA', 'Robert', 'Lončar', 2324, 'IM', 1964);