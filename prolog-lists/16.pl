/*

P16 (**) Drop every N'th element from a list.

Example:
?- drop([a,b,c,d,e,f,g,h,i,k],3,X).
X = [a,b,d,e,g,h,k]

*/

drop(L,N,X) :- drop_acc(L,N,N,X).

drop_acc([],_,_,[]).
drop_acc([_|T],1,N,X) :- drop_acc(T,N,N,X).
drop_acc([H|T],M,N,[H|X]) :-
    M > 1,
    M1 is M - 1,
    drop_acc(T,M1,N,X).