print_square(0).
print_square(X) :-
    X > 0,
    print_row(X),
    NewX is X - 1,
    print_square(NewX).

print_row(0).
print_row(X) :-
    X > 0,
    write('*'),
    NewX is X - 1,
    print_row(NewX).
