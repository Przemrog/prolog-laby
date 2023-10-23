osoba(przemek, marcin, katarzyna, mezczyzna, 22).
osoba(katarzyna, zbigniew, barbara, kobieta, 50).
osoba(marcin, wladyslaw, krystyna, mezczyzna, 45).
osoba(ryszard, zbigniew, barbara, mezczyzna, 60).
osoba(zdzislaw, zbigniew, barbara, mezczyzna, 57).
osoba(marta, zbigniew, barbara, kobieta, 62).
osoba(dorota, wladyslaw, krystyna, kobieta, 47).
osoba(zbigniew, edward, elzbieta, mezczyzna, 80).
osoba(barbara, jan, marianna, kobieta, 81).
osoba(wladyslaw, kazimierz, stefania, mezczyzna, 73).
osoba(krystyna, aleksander, jadwiga, kobieta, 70).

rodzenstwo(X, Y) :-
    osoba(X, OjciecX, MatkaX, _, _),
    osoba(Y, OjciecY, MatkaY, _, _),
    (OjciecX = OjciecY, MatkaX = MatkaY; OjciecX = MatkaY, MatkaX = OjciecY),
    X \= Y.

rodzic(X, Y) :- osoba(X, _, _, _, _), osoba(Y, OjciecY, MatkaY, _, _),
    (X = OjciecY; X = MatkaY).

brat(X, Y) :-
    rodzenstwo(X, Y),
    osoba(X, _, _, mezczyzna, _).


siostra(X, Y) :-
    rodzenstwo(X, Y),
    osoba(X, _, _, kobieta, _).
