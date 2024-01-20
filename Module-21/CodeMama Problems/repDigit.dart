import 'dart:io';

void main() {
  String input = stdin.readLineSync()!;

  int number = int.parse(input);

  bool isRepdigit = checkRepdigit(number);

  print(isRepdigit);
}

bool checkRepdigit(int number) {
  String numberString = number.toString();

  for (int i = 1; i < numberString.length; i++) {
    if (numberString[i] != numberString[0]) {
      return false;
    }
  }

  return true;
}
