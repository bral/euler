-module(prime).
-export([is_prime/1, test/0]).
-define(print(P), io:format("~p~n", [P])).

test() ->
  false = is_prime(1),
  true = is_prime(2),
  true = is_prime(3),
  false = is_prime(6),
  true = is_prime(7),
  false = is_prime(9),
  true = is_prime(233),
  passing.

is_prime(N) when N =:= 1 ->
  false;
is_prime(N) when N =:= 2 ->
  true;
is_prime(N) when N rem 2 =/= 0 ->
  Sqrt = math:sqrt(N),
  not_divisible(N, Sqrt, 3);
is_prime(_) ->
  false.

not_divisible(_, Sqrt, I) when I == Sqrt ->
  false;
not_divisible(_, Sqrt, I) when I >= Sqrt ->
  true;
not_divisible(N, _, I) when N rem I =:= 0 ->
  false;
not_divisible(N, Sqrt, I) ->
  not_divisible(N, Sqrt, I + 2).
