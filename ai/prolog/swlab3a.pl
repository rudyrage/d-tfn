% Factorial predicate
factorial(0, 1).  % Base case: factorial of 0 is 1
factorial(N, Result) :-
    N > 0,           % Ensure N is positive
    N1 is N - 1,     % Decrement N
    factorial(N1, TempResult),  % Recursive call
    Result is N * TempResult.    % Calculate factorial
