//We call a string funny if its odd positioned (1st,3rd,5th,... from the beginning) characters are all lowercase English letters and its even positioned characters (2nd,4th,6th,... from the beginning) are all uppercase English letters. You are given a string
// S. You have to find out if S is funny or not.
import 'dart:io';

String isFunny(String s) {
  for (int i = 0; i < s.length; i++) {
    int codePoint = s.runes.elementAt(i);
    if ((i + 1) % 2 == 0) {
      if (codePoint < 65 || codePoint > 90) return 'No';
    } else {
      if (codePoint < 97 || codePoint > 122) return 'No';
    }
  }
  return 'Yes';
}

void main() {
  String? s = stdin.readLineSync();
  print(isFunny(s!));
}
