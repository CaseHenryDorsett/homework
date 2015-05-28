-module(p05).

-export([reverse/1]).

reverse([]) ->
	[];
reverse(List) ->
	reverse(List, []).

reverse([H|T], Acc) ->
	Res = [H] ++ Acc,
	reverse(T, Res);
reverse([], Acc) ->
	Acc.