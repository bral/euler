/*

The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?

*/

var primeFactor = function(x) {
  var largest = 0;
  var possiblePrimes = {};

  var isPrime = function(num) {
    if(possiblePrimes[num]) { return true; }
    if(num % 2 === 0){ return false; }
    for(var i = 3; i < Math.sqrt(num); i+=2) {
      if(num % i === 0){ return false; }
    }
    possiblePrimes[num] = true;
    return true;
  };

  for(var i = 0; i < Math.sqrt(x); i++){
    if(isPrime(i) && x % i === 0){
      largest = i;
    }
  }

  return largest;
};

console.log(primeFactor(600851475143));

// Answer: 6857