//You are tasked with writing a program that takes a string as input and transforms it in such a way that after every two characters, add character 'x' in the string If 'x' is added immideately before last two characters, you need not to add the character 'x' at the end
import 'dart:io';

void main() {
  print('Enter a string:');
  String s = stdin.readLineSync()!;
  String result = '';

  for (int i = 0; i < s.length; i++) {
    result += s[i];

    if ((i + 1) % 2 == 0 && i != s.length - 1) {
      result += 'x';
    }
  }

  print('$result');
}
