//Write a program to create a function that takes two arguments: the original price and the discount percentage as integers and returns the final price after the discount.
import 'dart:io';

double calculateDiscountedPrice(int originalPrice, int discountPercentage) {
  double discount = originalPrice * discountPercentage / 100;
  double finalPrice = originalPrice - discount;
  return finalPrice;
}

void main() {
  List<String> input = stdin.readLineSync()!.split(' ');

  int originalPrice = int.parse(input[0]);
  int discountPercentage = int.parse(input[1]);

  double finalPrice = calculateDiscountedPrice(originalPrice, discountPercentage);

  print("Price: ${finalPrice.toStringAsFixed(2)}");
}
