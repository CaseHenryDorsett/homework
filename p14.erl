-module(p14).

-export([duplicate/1]).

duplicate(L = [_|_]) ->
	duplicate(L, []);
duplicate([]) ->
	[].

duplicate([H|T], Acc) ->
	duplicate(T, [H|[H|Acc]]);
duplicate([], Acc) ->
	reverse(Acc).

reverse([]) ->
	[];
reverse(List) ->
	reverse(List, []).

reverse([H|T], Acc) ->
	Res = [H] ++ Acc,
	reverse(T, Res);
reverse([], Acc) ->
	Acc.