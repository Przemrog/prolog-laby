nwd(X, Y, NWD) :-
    X =:= Y,
    NWD is X.

nwd(X, Y, NWD) :-
    X < Y,
    Y1 is Y - X,
    nwd(X, Y1, NWD).

nwd(X, Y, NWD) :-
    X > Y,
    X1 is X - Y,
    nwd(X1, Y, NWD).
