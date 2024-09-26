gcd(X, 0, X) :- X > 0.
gcd(X, Y, Result) :-
    Y > 0,
    R is X mod Y,
    gcd(Y, R, Result).

lcm(X, Y, Result) :-
    gcd(X, Y, Gcd),
    Result is (X * Y) // Gcd.
