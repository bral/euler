% 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

% What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

% TODO only check if is_divisible for int which ARE NOT factors of Max

-module(problem5).
-export([small/1]).
-define(print(P), io:format("~p~n", [P])).

small(N) ->
  check(N, N, N).

check(Max, Num, Div) when Div =:= 2 ->
  Num;
check(Max, Num, Div) ->
  case is_divisible(Max, Num, Div) of
    true ->
      check(Max, Num, Div - 1);
    _ ->
      check(Max, Num + (Max - Div) + Div, Max)
  end.

is_divisible(_, Num, Div) when Num rem Div =:= 0 ->
  true;
is_divisible(_, Num, Div) when Num rem Div =/= 0 ->
  false.
