/*

P21 (*) Insert an element at a given position into a list.

Example:
?- insert_at(alfa,[a,b,c,d],2,L).
L = [a,alfa,b,c,d]

*/

insert_at(_,[],0,[]).
insert_at(_,[H|T],0,[H|X]) :- insert_at(_,T,0,X).
insert_at(E,T,1,[E|X]) :- insert_at(E,T,0,X).
insert_at(E,[H|T],P,[H|X]) :-
    P > 1,
    P1 is P - 1,
    insert_at(E,T,P1,X).