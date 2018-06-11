easy(1).
easy(2).
easy(3).

gizmo(a, 1).
gizmo(b, 3).
gizmo(a, 2).
gizmo(d, 5).
gizmo(c, 3).
gizmo(a, 3).
gizmo(c, 4).

harder(a, 1).
harder(c, X).
harder(b, 4).
harder(d, 2).

% | ?- write('report'), nl, easy(T), write(T), gizmo(M, T), tab(2), write(M), fail.
% report
% 1  a2  a3  b  c  a
% 
% write('buggy'), nl, easy(Z), write(X), gizmo(Z, X), tab(2), write(Z), fail.
%
% Z = 1
% X = a
%
% buggy
% 1  a2
%
%
% door(kitchen, R), write(R), nl, location(T,R), tab(3), write(T), nl, fail.
