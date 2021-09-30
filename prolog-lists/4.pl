/*

P04 (*) Find the number of elements of a list.

*/

my_count([],0).
my_count([_|T],C) :-
    my_count(T,C1),
    C is C1 + 1.