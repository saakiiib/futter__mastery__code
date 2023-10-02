//You are tasked with writing a program that takes a string
// �
// S as input and transforms it in such a way that after every two characters, the following character is converted to uppercase.

import 'dart:io';

void main() {
  stdout.write("Enter a string: ");
  String? input = stdin.readLineSync();

  if (input != null) {
    String transformedString = transformString(input);
    print("Transformed string: $transformedString");
  } else {
    print("Invalid input. Please enter a valid string.");
  }
}

String transformString(String input) {
  String transformed = "";

  for (int i = 0; i < input.length; i++) {
    if (i % 3 == 2) {
      transformed += input[i].toUpperCase();
    } else {
      transformed += input[i];
    }
  }

  return transformed;
}
