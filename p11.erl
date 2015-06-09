-module(p11).

-export([encode_modified/1]).

encode_modified(L1) ->
	encode_modified(pack(L1), []).
encode_modified([[H1]|T1], Acc1) ->
	encode_modified(T1, [H1|Acc1]);
encode_modified([H1 = [H2|_]|T1], Acc1) ->
	encode_modified(T1, [{len(H1), H2}|Acc1]);
encode_modified([], Acc1) ->
	reverse(Acc1, []).

pack(L2 = [_|_]) ->
	pack(L2, [], []);
pack([]) ->
	[].

pack([H3|T3], [], Acc3) ->
	pack(T3, [H3], Acc3);
pack([H3|T3], [H3|_] = Acc3, Acc4) ->
	pack(T3, [H3|Acc3], Acc4);
pack([H3|T3], Acc3, Acc4) ->
	pack(T3, [H3], [Acc3|Acc4]);
pack([], Acc3, Acc4) ->
	reverse([Acc3|Acc4], []).

reverse([H5|T5], Acc5) ->
	Res = [H5] ++ Acc5,
	reverse(T5, Res);
reverse([], Acc5) ->
	Acc5.

len(L3) ->
	len(L3, 0).
len([_|T6], Acc6) ->
	len(T6, Acc6 + 1);
len([], Acc6) ->
	Acc6.