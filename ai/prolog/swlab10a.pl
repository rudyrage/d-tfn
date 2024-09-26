max(X, Y, X) :- X >= Y.
max(X, Y, Y) :- Y > X.

max_list([X], X).
max_list([X|Rest], M) :-
    max_list(Rest, R),
    max(X, R, M).
