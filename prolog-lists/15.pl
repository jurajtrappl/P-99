/*

P15 (**) Duplicate the elements of a list a given number of times.

Example:
?- dupli([a,b,c],3,X).
X = [a,a,a,b,b,b,c,c,c]

What are the results of the goal:
?- dupli(X,3,Y).

*/

dupli(L,N,F) :-
    dupli_inner(L,N,X),
    flatten(X,F).

dupli_inner([],_,[]).
dupli_inner([H|T],N,[R|X]) :-
    repeat(H,N,R),
    dupli_inner(T,N,X).

repeat(_,0,[]).
repeat(E,N,[E|X]) :-
    N > 0,
    N1 is N - 1,
    repeat(E,N1,X).