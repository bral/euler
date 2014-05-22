% The sum of the squares of the first ten natural numbers is,

% 1^2 + 2^2 + ... + 10^2 = 385
% The square of the sum of the first ten natural numbers is,

% (1 + 2 + ... + 10)^2 = 55^2 = 3025
% Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.

% Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

-module(problem6).
-export([sum/1]).

sum(N) ->
  square_sum(N) - sum_square(N).

square_sum(N) ->
  trunc(math:pow(lists:sum(lists:seq(1,N)), 2)).

sum_square(N) ->
  trunc(lists:sum(lists:map(fun(A) -> math:pow(A, 2) end, (lists:seq(1,N))))).
