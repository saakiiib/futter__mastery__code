import 'dart:io';

void main() {
  var celsius = double.parse(stdin.readLineSync()!);

  var fahrenheit = (celsius * 9/5) + 32;
  print("The temperature in Fahrenheit is: ${fahrenheit.toStringAsFixed(2)}");
}
