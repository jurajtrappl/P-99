/*

P05 (*) Reverse a list.

*/

my_reverse(L,X) :- my_reverse_acc(L,X,[]).

my_reverse_acc([],X,X) :- !.
my_reverse_acc([H|T],X,Y) :- my_reverse_acc(T,X,[H|Y]).