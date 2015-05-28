-module(p01).

-export([last/1]).

last([A]) ->
	[A];
last([_|T]) ->
	last(T);
last([]) ->
	[].
	