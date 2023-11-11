//For being lazy you are punished to walk on the garden at least N steps. As you mastered laziness, after ℎ with step you take rest for i second(s). You also takes X second(s) to complete each step. Now write a program to calculate the total time to take exactly N steps.
import 'dart:io';

void main() {
  String input = stdin.readLineSync()!;
  List<int> values = input.split(' ').map((e) => int.parse(e)).toList();
  int n = values[0];
  int x = values[1];

  int totalTime = 0;
  for (int i = 1; i <= n; i++) {
    totalTime += (i - 1) * x;
    totalTime += x;
  }

  print(totalTime);
}
