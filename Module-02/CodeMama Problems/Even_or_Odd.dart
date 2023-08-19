// Write a program that checks if a number entered by the user is even or odd.

import 'dart:io';

void main() {
  // Get input from the user
  print("Enter a number:");
  String input = stdin.readLineSync()!;
  int number = int.parse(input);

  // Check if the number is even or odd
  if (number % 2 == 0) {
    print("$number is an even number.");
  } else {
    print("$number is an odd number.");
  }
}
