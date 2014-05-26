% 2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.

% What is the sum of the digits of the number 2^1000?

-module(problem16).
-export([pow_sum/1]).
-define(print(P), io:format("~p~n", [P])).

pow_sum(N) ->
  Pow = [X - $0 || X <- integer_to_list(trunc(math:pow(2, N)))],
  sum(Pow, 0).

sum([], Acc) ->
  Acc;
sum([H|T], Acc) ->
  sum(T, Acc + H).