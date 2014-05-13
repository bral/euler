/*

The sum of the squares of the first ten natural numbers is,

1^2 + 2^2 + ... + 10^2 = 385
The square of the sum of the first ten natural numbers is,

(1 + 2 + ... + 10)^2 = 552 = 3025
Hence the difference between the sum of the squares of the
first ten natural numbers and the square of the sum is 3025 − 385 = 2640.

Find the difference between the sum of the squares of
the first one hundred natural numbers and the square of the sum.

*/

var sumDiff = function() {
  var sqrSum = (function() {
    var total = 0;
    for(var i = 1; i <= 100; i++) {
      total += Math.pow(i,2);
    }
    return total;
  })();

  var sumSqr = (function() {
    var total = 0;
    for(var i = 1; i <= 100; i++) {
      total += i;
    }
    total = Math.pow(total,2);
    return total;
  })();

  return sumSqr - sqrSum;
};

console.log(sumDiff());