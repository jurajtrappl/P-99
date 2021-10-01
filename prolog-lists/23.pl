/*

P23 (**) Extract a given number of randomly selected elements from a list.

The selected items shall be put into a result list.
Example:
?- rnd_select([a,b,c,d,e,f,g,h],3,L).
L = [e,d,a]

Hint: Use the built-in random number generator random/2 and the result of problem P20.

*/

:- ensure_loaded('20').

rnd_select(_,0,[]).
rnd_select(X,N,[E|Y]) :-
    N > 0,
    length(X,L),
    random(1,L,R),
    remove_at(E,X,R,Z),
    N1 is N - 1,
    rnd_select(Z,N1,Y).