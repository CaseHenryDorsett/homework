-module(p09).

-export([pack/1]).

pack(L = [_|_]) ->
	pack(L, [], []);
pack([]) ->
	[].

pack([])