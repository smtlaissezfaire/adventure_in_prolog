% consult(family_tree_ex_1_1).

% family 1
male(jay).
male(scott).
male(evan).
male(father_bob).
male(son_chris).
male(son_stephen).

female(teresa).
female(evelyn).


% family 2

parent(teresa, scott).
parent(jay, scott).
parent(evan, jay).
parent(evelyn, jay).
parent(father_bob, son_chris).
parent(father_bob, son_stephen).

spouse(jay, teresa).

married(X, Y) :- spouse(X, Y).
married(X, Y) :- spouse(Y, X).

mother(Parent, Child) :-
  parent(Parent, Child),
  female(Parent).

father(Parent, Child) :-
  parent(Parent, Child),
  male(Parent).

grandmother(Grandparent, Parent, Child) :-
  parent(Grandparent, Parent),
  female(Grandparent),
  parent(Parent, Child).

grandfather(Grandparent, Parent, Child) :-
  parent(Grandparent, Parent),
  male(Grandparent),
  parent(Parent, Child).

grandparent(X, Y) :- grandmother(X, _, Y).
grandparent(X, Y) :- grandmother(Y, _, X).
grandparent(X, Y) :- grandfather(X, _, Y).
grandparent(X, Y) :- grandfather(Y, _, X).

% don't yet know how to do not equal
sibling(Parent, Child1, Child2) :-
  parent(Parent, Child1),
  parent(Parent, Child2).

brothers(Parent, Child1, Child2) :-
  sibling(Parent, Child1, Child2),
  male(Child1),
  male(Child2).

sisters(Parent, Child1, Child2) :-
  sibling(Parent, Child1, Child2),
  female(Child1),
  female(Child2).


% sibling(Parent, son_chris, son_stephen).
