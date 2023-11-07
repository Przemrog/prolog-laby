d³ugoœæ(kontener1, 20).
d³ugoœæ(kontener2, 25).

szerokoœæ(kontener1,30).
szerokoœæ(kontener2,9).

wysokoœæ(kontener1, 15).
wysokoœæ(kontener2, 10).

objetosc(Kontener, Objetosc) :-
    d³ugoœæ(Kontener, Dlugosc),
    szerokoœæ(Kontener, Szerokosc),
    wysokoœæ(Kontener, Wysokosc),
    Objetosc is Dlugosc * Szerokosc * Wysokosc.

