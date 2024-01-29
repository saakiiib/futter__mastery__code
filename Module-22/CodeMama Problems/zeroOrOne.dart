import 'dart:io';

int wordToNumber(String word) {
  final wordMap = {
    'zero': 0,
    'one': 1,
    'two': 2,
    'three': 3,
    'four': 4,
    'five': 5,
    'six': 6,
    'seven': 7,
    'eight': 8,
    'nine': 9,
  };

  return wordMap[word.trim()] ??
      -1; // Trim the input word before looking it up in the map.
}

void main() {
  String inputWord = stdin.readLineSync()!.toLowerCase();

  int number = wordToNumber(inputWord);

  if (number == -1) {
    print("Invalid input");
  } else {
    int remainder = number % 2;
    print(remainder);
  }
}
