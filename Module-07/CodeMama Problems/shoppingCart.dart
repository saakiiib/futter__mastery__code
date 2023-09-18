//Create a program that takes input for a product Id and the quantity purchased. Then, calculate and display the total cost of the items.
import 'dart:io';

void main() {
  // Define the product prices based on product ID
  final productPrices = {101: 10, 202: 25, 303: 5};

  // Read a single line of input
  final input = stdin.readLineSync();

  // Check if input is null, and if so, exit the program
  if (input == null) {
    print('Invalid input.');
    return;
  }

  // Split the input into product ID and quantity
  final inputParts = input.split(' ');

  // Check if inputParts has at least two elements
  if (inputParts.length < 2) {
    print('Invalid input format. Please provide product ID and quantity.');
    return;
  }

  // Parse product ID and quantity, handling potential null values
  final productId = int.tryParse(inputParts[0]);
  final quantity = int.tryParse(inputParts[1]);

  // Check if productId or quantity is null
  if (productId == null || quantity == null) {
    print('Invalid input format. Please provide valid product ID and quantity.');
    return;
  }

  // Calculate the total cost
  final productPrice = productPrices[productId];

  if (productPrice == null) {
    print('Invalid product ID.');
    return;
  }

  final totalCost = productPrice * quantity;

  // Print the total cost
  print(totalCost);
}
