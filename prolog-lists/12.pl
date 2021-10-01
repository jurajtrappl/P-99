/*

P12 (**) Decode a run-length encoded list.

Given a run-length code list generated as specified in problem P11. Construct its uncompressed version.

*/

rl_decode(L,F) :-
    rl_decode_inner(L,D),
    flatten(D,F).

rl_decode_inner([],[]).
rl_decode_inner([E|T],[E|X]) :-
    \+is_list(E),
    rl_decode_inner(T,X).
rl_decode_inner([[N,E]|T],[R|X]) :-
    repeat(E,N,R),
    rl_decode_inner(T,X).

repeat(_,0,[]).
repeat(E,N,[E|X]) :-
    N > 0,
    N1 is N - 1,
    repeat(E,N1,X).