/*

P22 (*) Create a list containing all integers within a given range.

Example:
?- range(4,9,L).
L = [4,5,6,7,8,9]

*/

range(K,K,[K]).
range(I,K,[I|L]) :-
    I =< K,
    I1 is I + 1,
    range(I1,K,L).