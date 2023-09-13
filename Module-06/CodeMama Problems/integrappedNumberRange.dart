// The "Integrapped Number Range" problem involves taking four input integers: l1, r1, l2, and r2. The goal is to print a specific range of integers following certain rules:
//
// Print all the integers between l1 and l2-1, inclusive of l1 but excluding l2.
// Exclude the integers between l2 and r2, which create a gap within the first range.
// Print all the integers between r2+1 and r1, inclusive of r1 but excluding r2+1.
// The problem requires identifying the gap between the two given ranges and printing the two segments separately while following these rules.

import 'dart:io';

void main() {
  var input = stdin.readLineSync()!;
  var numbers = input.split(' ').map(int.parse).toList();
  var l1 = numbers[0];
  var r1 = numbers[1];
  var l2 = numbers[2];
  var r2 = numbers[3];

  for (var i = l1; i < l2; i++) {
    if (i > l1) {
      stdout.write(' ');
    }
    stdout.write(i);
  }

  stdout.write(' ');

  for (var i = r2 + 1; i <= r1; i++) {
    if (i > r2 + 1) {
      stdout.write(' ');
    }
    stdout.write(i);
  }
}
