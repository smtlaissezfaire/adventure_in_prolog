% syntax for comments.
% output:
%
% /Users/smtlaissezfaire/src/git/adventure_in_prolog (master)$ gprolog
% GNU Prolog 1.4.4 (64 bits)
% Compiled Sep 18 2017, 19:40:04 with clang
% By Daniel Diaz
% Copyright (C) 1999-2013 Daniel Diaz
% | ?- [mortal_1_2].
% compiling /Users/smtlaissezfaire/src/git/adventure_in_prolog/mortal_1_2.pl for byte code...
% /Users/smtlaissezfaire/src/git/adventure_in_prolog/mortal_1_2.pl compiled, 12 lines read - 1022 bytes written, 6 ms
%
% (2 ms) yes
% | ?- mortal_report.
% Known mortals are:
% zeno
% socrates
% plato
% aristotle
%
% no

mortal(X) :- person(X).

person(zeno).
person(socrates).
person(plato).
person(aristotle).

mortal_report :-
  write('Known mortals are:'), nl,
  mortal(X),
  write(X), nl,
  fail.
