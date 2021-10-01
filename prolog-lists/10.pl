/*

P10 (*) Run-length encoding of a list.

Use the result of problem P09 to implement the so-called run-length encoding data compression method. Consecutive duplicates of elements are encoded as terms [N,E] where N is the number of duplicates of the element E.

Example:
?- encode([a,a,a,a,b,c,c,a,a,d,e,e,e,e],X).
X = [[4,a],[1,b],[2,c],[2,a],[1,d][4,e]]

*/

pack([],[]).
pack([H|T],[X|Xs]) :-
    pack_first(H,T,Y,X),
    pack(Y,Xs). 

pack_first(X,[],[],[X]).
pack_first(X,[Y|Ys],[Y|Ys],[X]) :- X \== Y.
pack_first(X,[X|Xs],Y,[X|Zs]) :- pack_first(X,Xs,Y,Zs).

encode(L,X) :-
    pack(L,P),
    encode_inner(P,X).

encode_inner([],[]).
encode_inner([[H|T]|U],[[N,H]|V]) :-
    length([H|T],N),
    encode_inner(U,V).

