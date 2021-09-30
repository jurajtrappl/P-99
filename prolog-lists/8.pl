/*

P08 (**) Eliminate consecutive duplicates of list elements.

If a list contains repeated elements they should be replaced with a single copy of the element.
The order of the elements should not be changed.

Example:
?- compress([a,a,a,a,b,c,c,a,a,d,e,e,e,e],X).
X = [a,b,c,a,d,e]

*/

compress(L,X) :- compress_acc(L,X,[]).

compress_acc([],X,X).
compress_acc([B],X,A) :-
    append(A,[B],As),
    compress_acc([],X,As).
compress_acc([B,B|T],X,A) :- compress_acc([B|T],X,A).
compress_acc([B,C|T],X,A) :-
    B \== C,
    append(A,[B],As),
    compress_acc([C|T],X,As).