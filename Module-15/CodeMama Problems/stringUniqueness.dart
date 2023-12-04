import 'dart:io';

void main() {
  String input = stdin.readLineSync()!;
  print(countUniqueCharacters(input));
}

int countUniqueCharacters(String input) {
  Set<String> uniqueChars = Set();
  for (int i = 0; i < input.length; i++) {
    uniqueChars.add(input[i]);
  }
  return uniqueChars.length;
}
