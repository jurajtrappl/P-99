/*

P24 (*) Lotto: Draw N different random numbers from the set 1..M.

The selected numbers shall be put into a result list.
Example:
?- rnd_select(6,49,L).
L = [23,1,17,33,21,37]

Hint: Combine the solutions of problems P22 and P23.

*/

% some errors with ensure loaded at my work station, thus copied code
:- ensure_loaded('20').
:- ensure_loaded('22').

rnd_select(_,0,[]).
rnd_select(X,N,[E|Y]) :-
    N > 0,
    length(X,L),
    random(1,L,R),
    remove_at(E,X,R,Z),
    N1 is N - 1,
    rnd_select(Z,N1,Y).

lotto(1,_,[]).
lotto(N,M,[H|L]) :-
    N > 1,
    range(1,M,R),
    rnd_select(R,1,[H|_]),
    N1 is N - 1,
    lotto(N1,M,L).