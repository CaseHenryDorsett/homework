-module(p15).

-export([replicate/2]).

replicate(L = [_|_], N) ->
	replicate(L, N, []);
replicate([], _) ->
	[].

replicate([H|T], N, Acc) ->
	replicate(T, N, repeat(H, N, Acc));
replicate([], _, Acc) ->
	reverse(Acc).


repeat(T, 1, Acc) ->
	[T|Acc];
repeat(_, 0, Acc) ->
	Acc;
repeat(T, N, Acc) ->
	repeat(T, (N - 1), [T|Acc]).

reverse([]) ->
	[];
reverse(List) ->
	reverse(List, []).

reverse([H|T], Acc) ->
	Res = [H] ++ Acc,
	reverse(T, Res);
reverse([], Acc) ->
	Acc.