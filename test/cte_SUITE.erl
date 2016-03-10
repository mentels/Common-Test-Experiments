-module(cte_SUITE).
-compile(export_all).

-include_lib("common_test/include/ct.hrl").
-include_lib("eunit/include/eunit.hrl").

all() ->
    [sanity_check, config_contains_test_key].

sanity_check(Config) ->
    ?assertEqual(undefined, ct:get_config(not_there)),
    ?assertEqual(undefined, test_server:lookup_config(not_there,
                                                      Config)).

config_contains_test_key(Config) ->
    ?assertEqual(<<"alice">>, ct:get_config(test_key)),
    ?assertEqual(undefined, test_server:lookup_config(test_key,
                                                      Config)).











