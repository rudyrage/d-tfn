greatest([X], X).
greatest([X|Rest], G) :-
    greatest(Rest, R),
    (X > R -> G = X ; G = R).
  
