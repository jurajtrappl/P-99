/*

P20 (*) Remove the K'th element from a list.

Example:
?- remove_at(X,[a,b,c,d],2,R).
X = b
R = [a,c,d]

*/

remove_at(_,[],_,[]).
remove_at(X,[H|T],K,[H|R]) :-
    K > 1,
    K1 is K - 1,
    remove_at(X,T,K1,R).
remove_at(X,[X|T],1,R) :-
    remove_at(X,T,0,R).
remove_at(_,[H|T],0,[H|R]) :- remove_at(_,T,0,R).