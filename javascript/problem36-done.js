/*

The decimal number, 585 = 10010010012 (binary), is palindromic in both bases.

Find the sum of all numbers, less than one million, which are palindromic in base 10 and base 2.

(Please note that the palindromic number, in either base, may not include leading zeros.)

*/

var palindrome = function() {
  var total = 0;
  var isPalin10 = function(x) {
    // TODO determine if argument wether base 10 or base 2 number is palindrom
    x = x.toString();
    xRev = x.split('').reverse().join('');
    if(x === xRev) { return true; }
    return false;
  };

  var isPalin2 = function(x) {
    x = x.toString(2);
    xRev = x.split('').reverse().join('');
    if(x === xRev) { return true; }
    return false;
  };

  for(var i = 1; i < 1000000; i++) {
    // If i is palindrome and i base 2 is palindrome
    if(isPalin10(i) && isPalin2(i)) {
      total += i;
      // total += i;
    }
  }
  return total;
};

console.log(palindrome());