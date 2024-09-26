% Fibonacci predicate
fibonacci(0, 0).   % Base case: Fibonacci(0) is 0
fibonacci(1, 1).   % Base case: Fibonacci(1) is 1
fibonacci(N, Result) :-
    N > 1,          % Ensure N is greater than 1
    N1 is N - 1,    % Decrement N
    N2 is N - 2,    % Decrement N by 2
    fibonacci(N1, Temp1),  % Recursive call for N-1
    fibonacci(N2, Temp2),  % Recursive call for N-2
    Result is Temp1 + Temp2.  % Calculate Fibonacci
