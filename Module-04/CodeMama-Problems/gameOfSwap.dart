import 'dart:io';
void main() {
  var input = stdin.readLineSync()!;
  var numbers = input.split(' ').map(int.parse).toList();

  var num1 = numbers[0];
  var num2 = numbers[1];

  // Swapping the values
  var temp = num1;
  num1 = num2;
  num2 = temp;

  print("Before swapping: num1 = $num2, num2 = $num1");
  print("After swapping: num1 = $num1, num2 = $num2");
}
