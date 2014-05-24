% The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

% Find the sum of all the primes below two million.

-module(problem10).
-export([sum/1]).
-define(print(P), io:format("~p~n", [P])).

sum(N) ->
  add_primes(N, 3, 0).

add_primes(Upto, I, Acc) ->
  case prime:is_prime(I) of
    true when I < Upto ->
      add_primes(Upto, I + 2, Acc + I);
    true when I >= Upto ->
      Acc + 2;
    _ ->
      add_primes(Upto, I + 2, Acc)
  end.