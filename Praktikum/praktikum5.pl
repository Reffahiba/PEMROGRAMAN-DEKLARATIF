list_member(X, [X | _]).
list_member(X, [_ | Tail]) :- list_member(X, Tail).

list_length([], 0).
list_length([_ | Tail], N) :- list_length(Tail, N1), N is N1 + 1.

list_concat([], L, L).
list_concat([X1 | L1], L2, [X1 | L3]) :- list_concat(L1, L2, L3).

list_delete(X, [X], []).
list_delete(X, [X | L1], L1).
list_delete(X, [Y | L2], [Y | L1]) :- list_delete(X, L2, L1).

list_append(A, T, T) :- list_member(A, T),!.
list_append(A,T, [A|T]).

list_insert(X, L, R) :- list_delete(X, R, L).

list_even_len([]).
list_even_len([Head | Tail]) :- list_odd_len(Tail).
list_odd_len([_]).
list_odd_len([Head | Tail]) :- list_even_len(Tail).