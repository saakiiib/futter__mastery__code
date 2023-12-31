import 'dart:io';

void main() {
  List<String> inputNumbers = stdin.readLineSync()!.split(' ');

  int num1 = int.parse(inputNumbers[0]);
  int num2 = int.parse(inputNumbers[1]);
  int num3 = int.parse(inputNumbers[2]);

  int max = maxOfThree(num1, num2, num3);

  print('$max');
}

int maxOfThree(int a, int b, int c) {
  return [a, b, c]
      .reduce((value, element) => value > element ? value : element);
}
