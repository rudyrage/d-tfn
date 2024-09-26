factors(0, []).
factors(N, Factors) :-
    findall(X, (between(1, N, X), N mod X =:= 0), Factors).
