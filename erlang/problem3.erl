% The prime factors of 13195 are 5, 7, 13 and 29.

% What is the largest prime factor of the number 600851475143 ?

-module(problem3).
-import([prime, [isprime/1]).
-export([prime_factor/1]).
-define(print(P), io:format("~p~n", [P])).

prime_factor(N) ->
  Max = trunc(math:sqrt(N)),
  find_largest(N, Max).

find_largest(N, Max) ->
  case prime:is_prime(Max) of
    true when N rem Max =:= 0 ->
      Max;
    _ ->
      find_largest(N, Max - 1)
  end.
