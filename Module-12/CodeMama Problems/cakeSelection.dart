// You wants to buy a cake that is at least 200 grams, but you don’t want it to be heavier than 300 grams. As for sweetness, she wants her cake to have a sugar content of 50 grams or more. The cake must have 150 calories or more.

import 'dart:io';

void main() {
  var input = stdin.readLineSync()!.split(' ');
  var weight = int.parse(input[0]);
  var sugarContent = int.parse(input[1]);
  var calories = int.parse(input[2]);

  if (weight >= 200 && weight <= 300 && sugarContent >= 50 && calories >= 150) {
    print("Yes");
  } else {
    print("No");
  }
}
