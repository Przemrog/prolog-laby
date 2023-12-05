piszListe([]).
piszListe([H|T]):-
    write(H),
    write(' '),
    piszListe(T).

nalezy(E, [E|_]).
nalezy(E, [_|Tail]) :-
    nalezy(E, Tail).


dlugosc_listy([], 0).
dlugosc_listy([_|Tail], Dlugosc) :-
    dlugosc_listy(Tail, DlugoscOgon),
    Dlugosc is DlugoscOgon + 1.

lacz([], X, X).
lacz([H|T], Lista2, [H|Wynik]):-
    lacz(T,Lista2, Wynik).

dodaj(E,Lista, NowaLista):-
    NowaLista = [E, Lista].

dodajVer1(E, Lista, [E|Lista]).

usunElement(_,[],[]).
usunElement(X,[X|Tail],NowaLista):-
    usunElement(X,Tail,NowaLista).
usunElement(X, [H|T], NowaLista):-
    X \= H,
    usunElement(X,T,NowaLista).

ostatni(E, [E]).
ostatni(E, [_|L]) :- ostatni(E, L).

poczatek([], _).
poczatek([X|Tail1], [X|Tail2]) :- poczatek(Tail1, Tail2).



