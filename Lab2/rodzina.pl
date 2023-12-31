rodzic(zofia, marcin).
rodzic(andrzej, marcin).
rodzic(andrzej, kasia).
rodzic(marcin, ania).
rodzic(marcin, krzy�).
rodzic(krzy�, miko�aj).
kobieta(zofia).
kobieta(kasia).
kobieta(ania).
m�czyzna(andrzej).
m�czyzna(marcin).
m�czyzna(krzy�).
m�czyzna(miko�aj).
potomek(Y,X):-
	rodzic(X,Y).
matka(X,Y):-
	rodzic(X,Y),
	kobieta(X).
dziadkowie(X,Z):-
	rodzic(X,Y),
	rodzic(Y,Z).
siostra(X,Y):-
	rodzic(Z,X),
	rodzic(Z,Y),
	kobieta(X).

szcz�liwy(X) :-
    rodzic(X, _).

dwoje_dzieci(X) :-
    rodzic(X, Dziecko1),
    siostra(Dziecko1, _),
    rodzic(X, Dziecko2),
    Dziecko1 \= Dziecko2.

wnuk(Wnuk, Dziadek) :-
    rodzic(Dziadek, Rodzic),
    rodzic(Rodzic, Wnuk).

ciotka(X, Y) :-
    rodzic(RodzicX, Y),
    siostra(X, RodzicX),
    X \= RodzicX.

nast�pca(X, Y) :-
    rodzic(Y, X).
nast�pca(X, Y) :-
    rodzic(Z, X),
    nast�pca(Z, Y).
