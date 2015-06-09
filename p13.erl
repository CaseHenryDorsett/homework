-module(p13).

-export([decode/1]).

decode([]) ->
	[];
decode(L1) ->
	decode(L1, []). 

decode([{0,_}|T1], Acc1) ->
	decode(T1, Acc1);
decode([{N,M}|T1], Acc1) ->
	N1 = N - 1,
	decode([{N1,M}|T1], [M|Acc1]);
decode([], Acc1) ->
	reverse(Acc1, []).

reverse([H2|T2], Acc2) ->
	Res = [H2] ++ Acc2,
	reverse(T2, Res);
reverse([], Acc2) ->
	Acc2.