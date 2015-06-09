-module(p09).

-export([pack/1]).

pack(L = [_|_]) ->
	pack(L, [], []);
pack([]) ->
	[].

pack([H|T], [], Acc2) ->
	pack(T, [H], Acc2);
pack([H|T], [H|_] = Acc1, Acc2) ->
	pack(T, [H|Acc1], Acc2);
pack([H|T], Acc1, Acc2) ->
	pack(T, [H], [Acc1|Acc2]);
pack([], Acc1, Acc2) ->
	reverse([Acc1|Acc2], []).

reverse([H|T], Acc3) ->
	Res = [H] ++ Acc3,
	reverse(T, Res);
reverse([], Acc3) ->
	Acc3.