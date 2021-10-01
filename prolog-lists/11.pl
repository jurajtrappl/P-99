/* 

P11 (*) Modified run-length encoding.

Modify the result of problem P10 in such a way that if an element has no duplicates it is simply copied into the result list. Only elements with duplicates are transferred as [N,E] terms.

Example:
?- encode_modified([a,a,a,a,b,c,c,a,a,d,e,e,e,e],X).
X = [[4,a],b,[2,c],[2,a],d,[4,e]]

*/

:- ensure_loaded('9').

encode_modified(L,X) :-
    pack(L,P),
    encode_modified_inner(P,X).

encode_modified_inner([],[]).
encode_modified_inner([[H]|T],[H|U]) :-
    encode_modified_inner(T,U),
    !.
encode_modified_inner([[H|T]|U],[[N,H]|V]) :-
    length([H|T],N),
    encode_modified_inner(U,V).