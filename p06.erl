-module(p06).

-export([is_polindrome/1]).

is_polindrome(List1) ->
	List2 = reverse(List1),
	List1 == List2;
is_polindrome([]) ->
	true.

reverse([]) ->
	[];
reverse(List) ->
	reverse(List, []).

reverse([H|T], Acc) ->
	Res = [H] ++ Acc,
	reverse(T, Res);
reverse([], Acc) ->
	Acc.

