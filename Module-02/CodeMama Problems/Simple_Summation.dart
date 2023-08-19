// Write a program that calculates and prints the sum of two numbers entered by the user.
// -2 31 ≤ |S| ≤ 231 - 1
import 'dart:io';

void main() {
  int num1 = int.parse(stdin.readLineSync()!);
  int num2 = int.parse(stdin.readLineSync()!);

  int maxRange = (pow(2, 31) - 1).toInt();

  if (num1 >= -pow(2, 31) && num1 <= maxRange && num2 >= -pow(2, 31) && num2 <= maxRange) {
    int sum = num1 + num2;
    print(sum);
  }
}
// import 'dart:io';
//
// void main() {
//   String input = stdin.readLineSync()!;
//   List<String> numbers = input.split(' ');
//
//   int num1 = int.parse(numbers[0]);
//   int num2 = int.parse(numbers[1]);
//   int sum = num1 + num2;
//   print(sum);
// }
