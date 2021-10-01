/*

P18 (**) Extract a slice from a list.

Given two indices, I and K, the slice is the list containing the elements between the I'th and K'th element of the original list (both limits included). Start counting the elements with 1.

Example:
?- slice([a,b,c,d,e,f,g,h,i,k],3,7,L).
X = [c,d,e,f,g]

*/

slice(L,I,K,S) :- slice_inner(L,I,K,S,1).

slice_inner([],_,_,[],_).
slice_inner([_|T],I,K,S,C) :-
    I > C,
    C1 is C + 1,
    slice_inner(T,I,K,S,C1).
slice_inner([H|T],I,K,[H|S],C) :-
    I =< C,
    K >= C,
    C1 is C + 1,
    slice_inner(T,I,K,S,C1).
slice_inner([_|T],I,K,S,C) :-
    K < C,
    C1 is C + 1,
    slice_inner(T,I,K,S,C1).