-module(cte).
-compile([export_all]).

list_reverse(L) when is_list(L) ->
    lists:reverse(L).
