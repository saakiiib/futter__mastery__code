// There are N tiles in a row with red, green or blue paint. How many tiles do you need to remove so that no two consecutive tiles have the same color? Consecutive tiles are those that are next to each other.

import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);
  String s = stdin.readLineSync()!;

  int tilesToRemove = 0;

  for (int i = 1; i < n; i++) {
    if (s[i] == s[i - 1]) {
      tilesToRemove++;
    }
  }

  print(tilesToRemove);
}
