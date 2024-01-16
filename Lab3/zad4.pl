dlugosc(kontener1, 20).
dlugosc(kontener2, 25).

szerokosc(kontener1,30).
szerokosc(kontener2,9).

wysokosc(kontener1, 15).
wysokosc(kontener2, 10).

objetosc(Kontener, Objetosc) :-
    dlugosc(Kontener, Dlugosc),
    szerokosc(Kontener, Szerokosc),
    wysokosc(Kontener, Wysokosc),
    Objetosc is Dlugosc * Szerokosc * Wysokosc.

