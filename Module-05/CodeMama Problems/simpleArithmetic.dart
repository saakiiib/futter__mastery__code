import 'dart:io';

void main() {
  String input = stdin.readLineSync()!;

  List<String> parts = input.split(' ');

  int operand1 = int.parse(parts[0]);
  int operand2 = int.parse(parts[2]);
  String operator = parts[1];

  int result = 0;

  if (operator == '+') {
    result = operand1 + operand2;
  } else if (operator == '-') {
    result = operand1 - operand2;
  } else if (operator == '*') {
    result = operand1 * operand2;
  } else if (operator == '/') {
    result = operand1 ~/ operand2;
  }

  print(result);

}