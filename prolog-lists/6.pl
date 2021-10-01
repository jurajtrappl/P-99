/*

P06 (*) Find out whether a list is a palindrome.

A palindrome can be read forward or backward; e.g. [x,a,m,a,x].

*/

:- ensure_loaded('5').

is_palindrome(L) :- my_reverse(L, L).