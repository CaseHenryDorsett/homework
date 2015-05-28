-module(bs02).
-export([words/1]).

words(A)->
    words(A, <<>>, []).

words(<<>>, Acc1, Acc2)->
    reverse([Acc1|Acc2]);
words(<<"", Rest/binary>>, Acc1, Acc2)->
    words(Rest, <<>>, [Acc1|Acc2]);
words(<<X, Rest/binary>>, Acc1, Acc2) ->
    words(Rest, <<Acc1/binary, X>>, Acc2).

reverse(List) ->
    reverse(List, []).

reverse([H|T], Acc) ->
    Res = [H] ++ Acc,
    reverse(T, Res);
reverse([], Acc) ->
    Acc.