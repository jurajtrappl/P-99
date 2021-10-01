/*

P19 (**) Rotate a list N places to the left.

Examples:
?- rotate([a,b,c,d,e,f,g,h],3,X).
X = [d,e,f,g,h,a,b,c]

?- rotate([a,b,c,d,e,f,g,h],-2,X).
X = [g,h,a,b,c,d,e,f]

Hint: Use the predefined predicates length/2 and append/3, as well as the result of problem P17.

*/

:- ensure_loaded('17').

rotate(L,N,X) :-
    N > 0,
    split(L,N,L1,L2),
    append(L2,L1,X).
rotate(L,N,X) :-
    N < 0,
    length(L,C),
    N1 is C + N,
    rotate(L,N1,X).
