solve(S, E, N, D, O, R, Y) :-
    Digits = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
    select(S, Digits, Rest),
    S \= 0,
    select(E, Rest, Rest1),
    select(N, Rest1, Rest2),
    select(D, Rest2, Rest3),
    select(M, Rest3, Rest4),
    M \= 0,
    select(O, Rest4, Rest5),
    select(R, Rest5, Rest6),
    select(Y, Rest6, _),
    SEND is 1000*S + 100*E + 10*N + D,
    MORE is 1000*M + 100*O + 10*R + E,
    MONEY is 10000*M + 1000*O + 100*N + 10*E + Y,
    SEND + MORE =:= MONEY.

?- solve(S, E, N, D, O, R, Y).
