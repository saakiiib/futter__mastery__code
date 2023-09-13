//Table measurement
import 'dart:io';

void main() {
  var screenWidth = int.parse(stdin.readLineSync()!);

  // Calculate the left margin for the table
  var tableWidth = 300;
  var leftMargin = (screenWidth - tableWidth) ~/ 2;

  print(leftMargin);

}