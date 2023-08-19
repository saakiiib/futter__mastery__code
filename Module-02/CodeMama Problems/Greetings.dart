// Write a program that asks the user for their name and then prints a personalized greeting.
// User name should not be more than one string.

import 'dart:io';

void main() {
  String input = stdin.readLineSync()!;
  if (input.split(' ').length == 1) {
    print("Hello, $input! Nice to meet you.");
  }
}