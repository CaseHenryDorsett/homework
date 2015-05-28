-module(p08).

-export([compress/1]).

compress([H|T]) ->
	[H | [E || E <- compress(T), E /= H]];
compress([]) ->
	[].
	