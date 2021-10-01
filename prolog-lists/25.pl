/*

P25 (*) Generate a random permutation of the elements of a list.

Example:
?- rnd_permu([a,b,c,d,e,f],L).
L = [b,a,d,c,e,f]

*/

:- ensure_loaded('23').

rnd_permu(X,Y) :-
    length(X,L),
    rnd_select(X,L,Y).
