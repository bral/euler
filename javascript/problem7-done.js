/*

By listing the first six prime numbers:
2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

What is the 10,001st prime number?

*/

var prime = function(){
  var count = 0;
  var prime = 0;

  var leastFactor = function(n){
    if (isNaN(n) || !isFinite(n)) return NaN;
    if (n===0) return 0;
    if (n%1 || n*n<2) return 1;
    if (n%2===0) return 2;
    if (n%3===0) return 3;
    if (n%5===0) return 5;
    var m = Math.sqrt(n);
    for (var i=7;i<=m;i+=30) {
    if (n%i===0)      return i;
    if (n%(i+4)===0)  return i+4;
    if (n%(i+6)===0)  return i+6;
    if (n%(i+10)===0) return i+10;
    if (n%(i+12)===0) return i+12;
    if (n%(i+16)===0) return i+16;
    if (n%(i+22)===0) return i+22;
    if (n%(i+24)===0) return i+24;
    }
    return n;
  };

  var isPrime = function(n) {
    if (isNaN(n) || !isFinite(n) || n%1 || n<2) return false;
    if (n==leastFactor(n)) return true;
    return false;
  };

  for(var i = 0; count < 10001; i++) {
    if(isPrime(i)) {
      count++;
      prime = i;
    }
  }

  return prime;
};

console.log(prime());