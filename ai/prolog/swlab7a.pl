greatest([X], X).
greatest([Head|Tail], Greatest) :-
    greatest(Tail, TempGreatest),
    Greatest is max(Head, TempGreatest).
