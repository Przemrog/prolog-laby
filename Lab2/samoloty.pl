lot(a2324, warszawa, krakow, 1800, 1845, day(1, 1, 1, 1, 1, 1, 1)).
lot(lf224, warszawa, rzeszow, 1850, 1930, day(1, 1, 1, 1, 1, 1, 1)).
lot(m232, warszawa, berlin, 1400, 1525, day(1, 0, 1, 1, 0, 0, 1)).
lot(a231, warszawa, monachium, 1420, 1600, dni(0, 1, 1, 0, 1, 1, 1)).
lot(l324, warszawa, londyn, 1330, 1600, day(1, 1, 1, 1, 1, 1, 1)).
lot(a2324, krakow, warszawa, 700, 745, day(1, 1, 1, 1, 1, 1, 1)).
lot(lf224, rzeszow, warszawa, 850, 940, day(1, 1, 1, 1, 1, 1, 1)).
lot(m232, berlin, warszawa, 1600, 1725, day(1, 0, 1, 1, 0, 0, 1)).
lot(a231, monachium, warszawa, 1720, 1850, day(0, 1, 1, 0, 1, 1, 1)).
lot(l324, londyn, warszawa, 1720, 1940, day(1, 1, 1, 1, 1, 1, 1)).

w_wtorek(NrLotu) :-
    lot(NrLotu, _, _, _, _, day(_, _, _, _, _, 1, _)).

godziny_przelotow_rzeszow_warszawa(GodzinaWylotu, GodzinaPrzylotu) :-
    lot(_, rzeszow, warszawa, GodzinaWylotu, GodzinaPrzylotu, _).

trasa_lotu(NrLotu, MiejscePoczatkowe, MiejsceDocelowe) :-
    lot(NrLotu, MiejscePoczatkowe, MiejsceDocelowe, _, _, _).

dni_kursowania_berlin_warszawa(DniKursowania) :-
    lot(_, berlin, warszawa, _, _, DniKursowania), DniKursowania = day(_, _, _, _, _, _, _).

ladowanie_warszawa_poza_godzinami(NrLotu) :-
    lot(NrLotu, warszawa, _, GodzinaWylotu, _, _),
    (GodzinaWylotu < 800; (GodzinaWylotu > 1000, GodzinaWylotu < 1800)).
