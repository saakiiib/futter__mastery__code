//Suppose, you work in a toy car workshop, and your job is to build toy cars from a collection of parts. Each toy car needs 4 wheels, 1 car body, and 2 figures of people to be placed inside. Write a program which will calculate how many complete toy cars can be made, given the total number of wheels, car bodies and figures available.
import 'dart:io';

void main() {
  String input = stdin.readLineSync()!;
  List<int> parts = input.split(' ').map(int.parse).toList();

  int totalWheels = parts[0];
  int totalCarBodies = parts[1];
  int totalFigures = parts[2];

  int maxCars = calculateMaxToyCars(totalWheels, totalCarBodies, totalFigures);

  print("$maxCars");
}

int calculateMaxToyCars(int wheels, int carBodies, int figures) {
  int maxCars = 0;

  while (wheels >= 4 && carBodies >= 1 && figures >= 2) {
    maxCars++;
    wheels -= 4;
    carBodies--;
    figures -= 2;
  }

  return maxCars;
}
