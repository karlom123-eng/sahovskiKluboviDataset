SELECT json_agg(
    json_build_object(
        'kod', k.kod,
        'naziv', k.naziv,
        'grad', k.grad,
        'osnutak', k.osnutak,
        'predsjednik', k.predsjednik,
        'brojClanova', k.brojClanova,
        'liga', k.liga,
        'adresa', k.adresa,
        'igraci', (
            SELECT json_agg(
                json_build_object(
                    'ime', i.ime, 
                    'prezime', i.prezime, 
                    'fideRejting', i.fideRejting, 
                    'titula', i.titula, 
                    'godinaRodjenja', i.godinaRodjenja
                )
            )
            FROM igrac i WHERE i.klubKod = k.kod
        )
    ) 
) FROM klub k;