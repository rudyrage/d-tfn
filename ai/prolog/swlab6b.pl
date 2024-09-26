delete_element(_, [], []).
delete_element(Element, [Element|Tail], Tail).
delete_element(Element, [Head|Tail], [Head|Result]) :-
    delete_element(Element, Tail, Result).
