-module(p10).

-export([encode/1]).

encode(L1) ->
  encode(pack(L1), []).
encode([L1 = [H1|_]|T1], Acc1) ->
  encode(T1, [{len(L1), H1} | Acc1]);
encode([], Acc1) ->
  reverse(Acc1, []).


pack(L2 = [_|_]) ->
	pack(L2, [], []);
pack([]) ->
	[].

pack([H3|T3], [], Acc4) ->
	pack(T3, [H3], Acc4);
pack([H3|T3], [H3|_] = Acc3, Acc4) ->
	pack(T3, [H3|Acc3], Acc4);
pack([H3|T3], Acc3, Acc4) ->
	pack(T3, [H3], [Acc3|Acc4]);
pack([], Acc3, Acc4) ->
	reverse([Acc3|Acc4], []).

reverse([H4|T4], Acc5) ->
	Res = [H4] ++ Acc5,
	reverse(T4, Res);
reverse([], Acc5) ->
	Acc5.

len(L3) ->
	len(L3, 0).
len([_|T5], Acc6) ->
	len(T5, Acc6 + 1);
len([], Acc6) ->
	Acc6.