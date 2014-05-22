-module(prime).
-export([is_prime/1]).
-define(print(P), io:format("~p~n", [P])).

is_prime(N) when N =:= 2 ->
  true;
is_prime(N) when N rem 2 =/= 0 ->
  Sqrt = math:sqrt(N),
  not_divisible(N, Sqrt, 3);
is_prime(_) ->
  false.

not_divisible(_, Sqrt, I) when I >= Sqrt ->
  true;
not_divisible(N, _, I) when N rem I =:= 0 ->
  false;
not_divisible(N, Sqrt, I) ->
  not_divisible(N, Sqrt, I + 2).
