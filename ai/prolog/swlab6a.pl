concatenate([], List, List).
concatenate([Head|Tail], List, [Head|Result]) :-
    concatenate(Tail, List, Result).
