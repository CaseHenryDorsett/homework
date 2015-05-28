-module(bs03).
-export([split/2]).

split(A, B)->
    split(A, B, <<>>, []).

split(<<>>, _, Acc1, Acc2)->
    reverse([Acc1|Acc2]);
split(<<X, Y, Z, Rest/binary>>, B, Acc1, Acc2) when [X, Y, Z] == B ->
    split(Rest, B, <<>>, [Acc1|Acc2]);
split(<<X, Rest/binary>>, B, Acc1, Acc2) ->
    split(Rest, B, <<Acc1/binary, X>>, Acc2).

reverse(List) ->
    reverse(List, []).

reverse([H|T], Acc) ->
    Res = [H] ++ Acc,
    reverse(T, Res);
reverse([], Acc) ->
    Acc.