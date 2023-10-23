osoba(jan, 22, sport).
osoba(anna, 33, kino).
osoba(tomasz, 20, muzyka).
osoba(marta, 23, czytanie).
osoba(piotr, 33, podr�e).
osoba(katarzyna, 65, gotowanie).


starsza(X, Y) :- osoba(X, WiekX, _), osoba(Y, WiekY, _), WiekX > WiekY.
mlodsza(X, Y) :- osoba(X, WiekX, _), osoba(Y, WiekY, _), WiekX < WiekY.
r�wny_wiek(X, Y) :- osoba(X, WiekX, _), osoba(Y, WiekY, _), WiekX =:= WiekY.
