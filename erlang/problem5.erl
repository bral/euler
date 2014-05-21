% 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

% What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

-module(problem5).
-export([small/1]).

small(N) ->
  check(N, 1, 1).

check(Max, Num, Div) when Div > Max ->
  Num;
check(Max, Num, Div) ->
  case is_divisible(Max, Num, Div) of
    true ->
      check(Max, Num, Div + 1);
    _ ->
      check(Max, Num + 1, 1)
  end.

is_divisible(_, Num, Div) when Num rem Div =:= 0 ->
  true;
is_divisible(_, Num, Div) when Num rem Div =/= 0 ->
  false.
