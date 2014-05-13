/*

2520 is the smallest number that can be divided by each of the numbers
from 1 to 10 without any remainder.

What is the smallest positive number that is evenly divisible by all of
the numbers from 1 to 20?

*/

var smallest = function(lowerLimit, upperLimit){
  lowerLimit = Math.floor(upperLimit / 2);
  var number = upperLimit * lowerLimit;

  for(var i = lowerLimit; i <= upperLimit; i++) {
    if(number % i !== 0) {
      number += upperLimit;
      i = lowerLimit;
    }
  }

  return number;
};

console.log(smallest(1, 20));

// Answer: 232792560