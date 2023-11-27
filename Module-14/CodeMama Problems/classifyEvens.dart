import 'dart:io';

void main() {
  // Read six numbers separated by space
  String input = stdin.readLineSync()!;
  List<String> numbers = input.split(" ");

  // Initialize a counter for correct answers
  int correctCount = 0;

  // Check each number
  for (int i = 0; i < numbers.length; i++) {
    int num = int.tryParse(numbers[i]) ?? 0;

    // Check if the number is even
    if (num % 2 == 0) {
      correctCount++;
    }
  }

  // Output the number of correct answers
  print("$correctCount");
}
