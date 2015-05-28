-module(p07).

-export([flatten/1]).

flatten(List = [_|_]) ->
    flatten(List, []).

flatten([H = [_|_]|T], Acc) ->
    flatten(H, flatten(T, Acc));
flatten([H|T], Acc) ->
    [H|flatten(T, Acc)];
flatten([], Acc) ->
    Acc.