% Soal Nomor 1
fib(0, 0) :- !.
fib(1, 1) :- !.
fib(N, F) :- N > 1, N1 is N-1, N2 is N-2, fib(N1, F1), fib(N2, F2), F is F1+F2.

% Soal Nomor 2
gcd(X, X, X).
gcd(X, Y, Z) :- Y1 is Y mod X, (Y1 = 0 -> Z = X; gcd(Y1, X, Z)).

% Soal Nomor 3
hanoi(N) :- move(N, left, center, right).
move(1, L, _, R) :- write(L), write(' -> '), write(R), nl.
move(N, L, C, R) :- N > 1, M is N - 1, move(M, L, R, C), write(L), write(' -> '), write(R), nl, move(M, C, L, R).
