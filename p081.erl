-module(p08).

-export([compress/1]).

compress(L = [_|_]) ->
	compress(L, []).

compress([H|T], []) ->
	compress(T, [H]);
compress([H|T], [H1|_] = Acc) when H /= H1 ->
	compress(T, [H|Acc]);
compress([H|T], [H1|_] = Acc) ->
	compress(T, Acc);
compress([], Acc) ->
	reverse(Acc).

reverse(List) ->
    reverse(List, []).

reverse([H|T], Acc) ->
    reverse(T, [H|Acc]);
reverse([], Acc) ->
    Acc.
