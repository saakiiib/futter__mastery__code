import 'dart:io';

void main() {
  // Read two numbers A and B separated by space
  String input = stdin.readLineSync()!;
  List<String> values = input.split(" ");

  // Parse the values of A and B
  int A = int.tryParse(values[0]) ?? 0;
  int B = int.tryParse(values[1]) ?? 0;

  // Ensure A is smaller than B
  if (A > B) {
    int temp = A;
    A = B;
    B = temp;
  }

  // Initialize a variable to store the sum of plants
  int sum = 0;

  // Iterate through fields between A and B
  for (int i = A; i <= B; i++) {
    // Check if the number of plants is odd
    if (i % 2 != 0) {
      sum += i;
    }
  }

  // Output the sum of plants in fields with an odd number of plants
  print("$sum");
}
