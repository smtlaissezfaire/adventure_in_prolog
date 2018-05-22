
Running:

```
/Users/smtlaissezfaire/src/git/adventure_in_prolog (master)$ gprolog
GNU Prolog 1.4.4 (64 bits)
Compiled Sep 18 2017, 19:40:04 with clang
By Daniel Diaz
Copyright (C) 1999-2013 Daniel Diaz
| ?- consult(mortal).
compiling /Users/smtlaissezfaire/src/git/adventure_in_prolog/mortal.pl for byte code...
/Users/smtlaissezfaire/src/git/adventure_in_prolog/mortal.pl compiled, 3 lines read - 426 bytes written, 5 ms

(1 ms) yes
| ?- mortal(socrates).

| ?- X = socrates(X).

cannot display cyclic term for X

yes
| ?- consult(mortal).
compiling /Users/smtlaissezfaire/src/git/adventure_in_prolog/mortal.pl for byte code...
/Users/smtlaissezfaire/src/git/adventure_in_prolog/mortal.pl compiled, 4 lines read - 489 bytes written, 5 ms

yes
| ?- mortal(socrates).

yes
| ?- mortal(plato).   

yes
| ?- mortal(foo).  

no
| ?- reconsult(
)
.
uncaught exception: error(syntax_error('user_input:9 (char:1) expression expected'),read_term/3)
| ?- write('hello world')
.
hello world

yes
| ?-

| ?- mortal(X).

X = socrates ?

yes
| ?- mortal(X).

X = socrates ? ;

X = plato

yes
```
