% factorial(0,1).
% factorial(N,F) :- N > 0, N1 is N - 1, factorial(N1, F1), F is N * F1.

sum_range(X, X, X).
sum_range(X, Y, R):- X = Y, R is X.
sum_range(X, Y, R) :- X < Y, X1 is X + 1, sum_range(X1, Y, R1), R is X + R1.


sum_range(X, Y, R):- X = Y, R is Y.
sum_range(X, Y, R):- X > Y, Y1 is Y + 1, sum_range(X, Y1, R1), R is Y + R1.
