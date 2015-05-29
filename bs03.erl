-module(bs03).
-export([split/2]).

split(A, B)->
    split(A, B, <<>>, []).

split(<<>>, _, Acc1, Acc2)->
    reverse([Acc1|Acc2]);
split(A, B, Acc1, Acc2) ->
	CLen = length(B), 
	<<C:CLen/binary, Rest/binary>> = A,

	case binary_to_list(C) == B of
		true  -> split(Rest, B, <<>>, [Acc1|Acc2]);
		false -> <<X, Rest/binary>> = A, split(Rest, B, <<Acc1/binary, X>>, Acc2)
	end.

reverse(List) ->
    reverse(List, []).

reverse([H|T], Acc) ->
    Res = [H] ++ Acc,
    reverse(T, Res);
reverse([], Acc) ->
    Acc.
