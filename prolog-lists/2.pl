/*

P02: (*) Find the last but one element of a list.

*/

my_last_but_one(X,[X,_]).
my_last_but_one(X,[_,Y|T]) :- my_last_but_one(X,[Y,T]).