import 'dart:io';

void main() {
  double celsius = double.parse(stdin.readLineSync()!);

  double fahrenheit = convertToCelsius(celsius);

  print('The temperature in Fahrenheit is: ${fahrenheit.toStringAsFixed(2)}');
}

double convertToCelsius(double celsius) {
  return (celsius * 9 / 5) + 32;
}
