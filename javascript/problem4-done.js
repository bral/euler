/*

A palindromic number reads the same both ways. The largest palindrome made from
the product of two 2-digit numbers is 9009 = 91 × 99.

Find the largest palindrome made from the product of two 3-digit numbers.

*/

var palindromeNumber = function() {
  var largest = 0;
  var isPalindrome = function(num){
    var pal =  parseInt(("" + num).split("").reverse().join(""));
    if(pal === num) { return true; }
    else{ return false; }
  };

  for(var i = 999; i > 999 * 0.75; i--){
    for(var j = 999; j >= i; j--) {
      var result = i * j;
      if(isPalindrome(result) && result > largest) { largest = result; }
    }
  }

  return largest;
};

console.log(palindromeNumber());