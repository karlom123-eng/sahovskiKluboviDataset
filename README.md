# sahovskiKluboviDataset
Otvoreni skup podataka o šahovkim klubovima i nekim njihovim igračima
* **Autor:** Karlo Mijić
* **Verzija skupa podataka:** 1.0 
* **Jezik podataka:** Hrvatski
* **Otvorena licencija:** Creative Commons Attribution 4.0 International (CC BY 4.0). Licencija dopušta slobodno dijeljenje, prilagodbu i korištenje podataka u bilo koju svrhu, uz obavezno navođenje autora.
* **Izvor:** Podaci su preuzeti iz službenih registara i rejting-listi Hrvatskog šahovskog saveza (HŠS) te Svjetske šahovske organizacije (FIDE). Izvorni podaci zaštićeni su autorskim pravima HŠS-a (*© Hrvatski šahovski savez*)..
* **Opis:** Skup podataka obuhvaća odabrane hrvatske šahovske klubove i njihove istaknute igrače. 

## Opis atributa

### Klubovi
1. **kod** (VARCHAR): Jedinstvena oznaka kluba.
2. **naziv** (VARCHAR): Puni naziv šahovskog kluba.
3. **grad** (VARCHAR): Sjedište kluba.
4. **osnutak** (INT): Godina osnivanja kluba.
5. **predsjednik** (VARCHAR): Predsjednik kluba.
6. **brojClanova** (INT): Ukupan broj registriranih članova.
7. **liga** (VARCHAR): Nivo natjecanja u kojem sudjeluje najjača ekipe kluba.
8. **adresa** (VARCHAR): Ulica i kućni broj sjedišta.

### Igrači
1. **ime** (VARCHAR): Ime igrača.
2. **prezime** (VARCHAR): Prezime igrača.
3. **fideRejting** (INT): Trenutačni FIDE rejting.
4. **titula** (VARCHAR): Šahovska titula.
5. **godinaRodjenja** (INT): Godina rođenja igrača.

**Sustav:** PostgreSQL 18 (pgAdmin 4). Relacijski model 1:N (klub -> igrači) povezan preko ključa klubKod.








