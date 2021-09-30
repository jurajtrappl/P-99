/*

P06 (*) Find out whether a list is a palindrome.

A palindrome can be read forward or backward; e.g. [x,a,m,a,x].

*/

my_reverse(L,X) :- my_reverse_acc(L,X,[]).

my_reverse_acc([],X,X) :- !.
my_reverse_acc([H|T],X,Y) :- my_reverse_acc(T,X,[H|Y]).

is_palindrome(L) :- my_reverse(L, L).