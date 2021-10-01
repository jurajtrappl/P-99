/* 

P11 (*) Modified run-length encoding.

Modify the result of problem P10 in such a way that if an element has no duplicates it is simply copied into the result list. Only elements with duplicates are transferred as [N,E] terms.

Example:
?- encode_modified([a,a,a,a,b,c,c,a,a,d,e,e,e,e],X).
X = [[4,a],b,[2,c],[2,a],d,[4,e]]

*/

pack([],[]).
pack([H|T],[X|Xs]) :-
    pack_first(H,T,Y,X),
    pack(Y,Xs). 

pack_first(X,[],[],[X]).
pack_first(X,[Y|Ys],[Y|Ys],[X]) :- X \== Y.
pack_first(X,[X|Xs],Y,[X|Zs]) :- pack_first(X,Xs,Y,Zs).

encode_modified(L,X) :-
    pack(L,P),
    encode_inner(P,X).

encode_inner([],[]).
encode_inner([[H]|T],[H|U]) :- encode_inner(T,U), !.
encode_inner([[H|T]|U],[[N,H]|V]) :-
    length([H|T],N),
    encode_inner(U,V).