import 'dart:io';

bool isValidCode(String input) {
  RegExp regex = RegExp(r'^#[0-9A-Fa-f]{6}$');
  return regex.hasMatch(input);
}

void main() {
  String input = stdin.readLineSync()!;

  if (isValidCode(input)) {
    print("true");
  } else {
    print("false");
  }
}
