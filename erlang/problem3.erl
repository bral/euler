% The prime factors of 13195 are 5, 7, 13 and 29.

% What is the largest prime factor of the number 600851475143 ?

-module(problem3).
-export([prime_factor/1]).
-define(print(P), io:format("~p~n", [P])).

prime_factor(N) ->
  Max = trunc(math:sqrt(N)),
  find_largest(N, Max).

find_largest(N, Max) ->
  case is_prime(Max) of
    true when N rem Max =:= 0 ->
      Max;
    _ ->
      find_largest(N, Max - 1)
  end.

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
