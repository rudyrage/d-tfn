sum(X, Y, Result) :- Result is X + Y.
difference(X, Y, Result) :- Result is X - Y.
multiplication(X, Y, Result) :- Result is X * Y.
division(X, Y, Result) :- Y \= 0, Result is X / Y.
integer_division(X, Y, Result) :- Y \= 0, Result is X // Y.

square(X, Result) :- Result is X * X.
cube(X, Result) :- Result is X * X * X.
modulus(X, Y, Result) :- Y \= 0, Result is X mod Y.
