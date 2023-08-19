import 'dart:io';

void main() {
  // Taking input from the user
  print("Enter a String:");
  String input = stdin.readLineSync()!;

  // Check if the input contains a vowel
  bool containsVowel = false;
  for (int i = 0; i < input.length; i++) {
    var char = input[i].toLowerCase();
    if ('aeiou'.contains(char)) {
      containsVowel = true;
      break;
    }
  }

  // Printing the result
  if (containsVowel) {
    print("The string contains a vowel.");
  } else {
    print("The string does not contain any vowel.");
  }
}
