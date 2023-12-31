import 'dart:io';

void main() {
  List<String> inputNumbers = stdin.readLineSync()!.split(' ');

  double num1 = double.parse(inputNumbers[0]);
  double num2 = double.parse(inputNumbers[1]);
  double num3 = double.parse(inputNumbers[2]);

  double average = calculateAverage(num1, num2, num3);

  print('Average: ${average.toStringAsFixed(2)}');
}

double calculateAverage(double a, double b, double c) {
  return (a + b + c) / 3;
}
