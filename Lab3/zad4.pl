d�ugo��(kontener1, 20).
d�ugo��(kontener2, 25).

szeroko��(kontener1,30).
szeroko��(kontener2,9).

wysoko��(kontener1, 15).
wysoko��(kontener2, 10).

objetosc(Kontener, Objetosc) :-
    d�ugo��(Kontener, Dlugosc),
    szeroko��(Kontener, Szerokosc),
    wysoko��(Kontener, Wysokosc),
    Objetosc is Dlugosc * Szerokosc * Wysokosc.

