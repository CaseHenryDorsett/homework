-module(p12).

-export([decode_modified/1]).

decode_modified(L1) ->
	decode_modified(L1, []). 
decode_modified([{0,_}|T1], Acc1) ->
	decode_modified(T1, Acc1);
decode_modified([{N,M}|T1], Acc1) ->
	N1 = N - 1,
	decode_modified([{N1,M}|T1], [M|Acc1]);
decode_modified([H1|T1], Acc1) ->
	decode_modified(T1, [H1|Acc1]);
decode_modified([], Acc1) ->
	reverse(Acc1, []).

reverse([H2|T2], Acc2) ->
	Res = [H2] ++ Acc2,
	reverse(T2, Res);
reverse([], Acc2) ->
	Acc2.