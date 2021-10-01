/*

P14 (*) Duplicate the elements of a list.

Example:
?- dupli([a,b,c,c,d],X).
X = [a,a,b,b,c,c,c,c,d,d]

*/

dupli([],[]).
dupli([H|T],[H,H|X]) :- dupli(T,X).