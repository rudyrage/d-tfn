perm([], []).
perm(List, [Head|Perm]) :-
    select(Head, List, Rest),
    perm(Rest, Perm).
