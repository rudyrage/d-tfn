tower_of_hanoi(1, Source, Target, _) :-
    write('Move disk from '), write(Source), write(' to '), write(Target), nl.

tower_of_hanoi(N, Source, Target, Auxiliary) :-
    N > 1,
    M is N - 1,
    tower_of_hanoi(M, Source, Auxiliary, Target),
    write('Move disk from '), write(Source), write(' to '), write(Target), nl,
    tower_of_hanoi(M, Auxiliary, Target, Source).
