/*

P07 (**) Flatten a nested list structure.

Transform a list, possibly holding lists as elements into a `flat' list by replacing each list with its elements (recursively).

Example:
?- my_flatten([a, [b, [c, d], e]], X).
X = [a, b, c, d, e]

Hint: Use the predefined predicates is_list/1 and append/3

*/

my_flatten(L,X) :- my_flatten_acc(L,X,[]).

my_flatten_acc([],X,X).
my_flatten_acc([H|T],X,A) :-
    \+is_list(H),
    append(A,[H],Y),
    my_flatten_acc(T,X,Y).
my_flatten_acc([H|T],X,A) :-
    is_list(H),
    my_flatten(H,Y),
    append(A,Y,Z),
    my_flatten_acc(T,X,Z).
