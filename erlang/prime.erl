-module(prime).
-export([isprime/1]).
-define(print(P), io:format("~p~n", [P])).

isprime(N) when N =:= 2 ->
  true;
isprime(N) when N rem 2 =/= 0 ->
  Sqrt = math:sqrt(N),
  not_divisible(N, Sqrt, 3);
isprime(_) ->
  false.

not_divisible(_, Sqrt, I) when I >= Sqrt ->
  true;
not_divisible(N, _, I) when N rem I =:= 0 ->
  false;
not_divisible(N, Sqrt, I) ->
  not_divisible(N, Sqrt, I + 2).
