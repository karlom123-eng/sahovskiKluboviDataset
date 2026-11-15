# sahovskiKluboviDataset
Otvoreni skup podataka o šahovkim klubovima i nekim njihovim igračima
* **Autor:** Karlo Mijić
* **Verzija skupa podataka:** 2.0 
* **Jezik podataka:** Hrvatski
* **Otvorena licencija:** Creative Commons Attribution 4.0 International (CC BY 4.0). Licencija dopušta slobodno dijeljenje, prilagodbu i korištenje podataka u bilo koju svrhu, uz obavezno navođenje autora.
* **Izvor:** Podaci su preuzeti iz službenih registara i rejting-listi Hrvatskog šahovskog saveza (HŠS) te Svjetske šahovske organizacije (FIDE). Izvorni podaci zaštićeni su autorskim pravima HŠS-a (*© Hrvatski šahovski savez*)..
* **Opis:** Skup podataka obuhvaća odabrane hrvatske šahovske klubove i njihove istaknute igrače. 

## Opis atributa

### Klubovi
1. **kod**: Jedinstvena oznaka kluba.
2. **naziv**: Puni naziv šahovskog kluba.
3. **grad**: Sjedište kluba.
4. **osnutak**: Godina osnivanja kluba.
5. **predsjednik**: Predsjednik kluba.
6. **brojClanova**: Ukupan broj registriranih članova.
7. **liga**: Nivo natjecanja u kojem sudjeluje najjača ekipe kluba.
8. **adresa**: Ulica i kućni broj sjedišta.

### Igrači
1. **ime**: Ime igrača.
2. **prezime**: Prezime igrača.
3. **fideRejting**: Trenutačni FIDE rejting.
4. **titula**: Šahovska titula.
5. **godinaRodjenja**: Godina rođenja igrača.

**Sustav:** PostgreSQL 18 (pgAdmin 4). Relacijski model 1:N (klub -> igrači) povezan preko ključa klubKod.

## Web sučelje – Laboratorijska vježba 2

Skup podataka dostupan je putem web-sučelja izrađenog pomoću
HTML-a, JavaScripta i Node.js-a s Express okvirom.

Web-sučelje omogućuje:
- Prikaz podataka iz PostgreSQL baze u HTML tablici.
- Filtriranje podataka prema svim atributima ili odabranom atributu.
- Preuzimanje filtriranih podataka u CSV i JSON formatima.
- Preuzimanje cjelokupnog skupa podataka u CSV i JSON formatima.

Struktura JSON podataka opisana je pomoću JSON Scheme u datoteci schema.json.






