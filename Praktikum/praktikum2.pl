% man(john).
% woman(mary).
% woman(jane).
% loves(john, mary).
% loves(mary, jane).
% loves(X,Y) :- loves(Y,X).

% Reffa is a student.
% person(jundi, male, 19).

dosen(favorisen, deklaratif).
dosen(shofiana, deklaratif).
asdos(john, deklaratif).
asdos(radit, deklaratif).
belajar(dzaky, deklaratif).
belajar(aldias, deklaratif).
belajar(khalid, deklaratif).
belajar(pandega, deklaratif).
belajar(almuhadi, deklaratif).

mengajar(X, Y) :- dosen(X, Z), belajar(Y, Z).
% diajar(X, Y) :- belajar(X, Z), (asdos(Y, Z); dosen(Y,Z)); asdos(X, Z), dosen(Y, Z).
diajar(X, Y) :- belajar(X, Z); asdos(_, Z), dosen(Y, Z); asdos(Y, Z), X\==Y.
membantu(X, Y, Z) :- asdos(X, Z), dosen(Y, Z).
