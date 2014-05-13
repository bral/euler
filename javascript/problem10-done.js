/*

The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

Find the sum of all the primes below two million.

*/

var primes = function() {
  var i, j, k, l = Math.floor((2000000-1)/2), a = [];
    for (i = 0; i < l; i++) {
        a[i] = true;
    } var m = Math.sqrt(2000000);
    for (i = 0; i <= m; i++) {
        if (a[i]) {
            j = 2 * i + 3;
            k = i + j;
            while (k < l) {
                a[k] = false;
                k += j;
            }
        }
    } var s = 2;
    for (i = 0; i < l; i++) {
        if (a[i]) {
            s += 2 * i + 3;
        }
    }
    return s;
};

console.log(primes());