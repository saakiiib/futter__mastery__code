// Write a program that reads 10 strings, one string per line. Your task is to count how many of these 10 strings contain the character 'T'.

import 'dart:io';

void main() {
  int count = 0;

  for (int i = 0; i < 10; i++) {
    final String inputString = stdin.readLineSync() ?? "";
    if (inputString.contains('T')) {
      count++;
    }
  }

  print(count);
}
