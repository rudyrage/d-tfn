average(List, Average) :-
    length_of_list(List, Length),
    sum_list(List, Sum),
    Average is Sum / Length.
    
sum_list([], 0).
sum_list([Head|Tail], Sum) :-
    sum_list(Tail, TailSum),
    Sum is Head + TailSum.
