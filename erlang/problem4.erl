% A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

% Find the largest palindrome made from the product of two 3-digit numbers.

-module(problem4).
-export([palindrome/0]).

palindrome() ->
  run_down(999, 999).

run_down(A, B) ->
  Test = A * B,
  case is_palindrome(Test) of
    true ->
      Test;
    _ when B > (A * 0.75) ->
      run_down(A, B - 1);
    _ ->
      run_down(A - 1, A)
  end.

is_palindrome(N) ->
  Pal = list_to_integer(lists:reverse(integer_to_list(N))),
  Pal =:= N.
