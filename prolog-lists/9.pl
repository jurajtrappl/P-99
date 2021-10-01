/*

P09 (**) Pack consecutive duplicates of list elements into sublists.

If a list contains repeated elements they should be placed in separate sublists.

Example:
?- pack([a,a,a,a,b,c,c,a,a,d,e,e,e,e],X).
X = [[a,a,a,a],[b],[c,c],[a,a],[d],[e,e,e,e]]

*/

pack([],[]).
pack([H|T],[X|Xs]) :-
    pack_first(H,T,Y,X),
    pack(Y,Xs). 

pack_first(X,[],[],[X]).
pack_first(X,[Y|Ys],[Y|Ys],[X]) :- X \== Y.
pack_first(X,[X|Xs],Y,[X|Zs]) :- pack_first(X,Xs,Y,Zs).

