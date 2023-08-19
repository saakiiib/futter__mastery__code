//Write a Dart program that calculates the total price of items in a shopping cart, including tax. Given a list of item prices [12.99, 8.75, 21.50, 5.00] and a tax rate of 8%, calculate the total cost after applying the tax. Print the total cost to two decimal places.

void main() {
  final itemPrices = [12.99, 8.75, 21.50, 5.00];
  final taxRate = 0.08;

  double totalCost = calculateTotalCost(itemPrices, taxRate);

  print("Total Cost: \$${totalCost.toStringAsFixed(2)}");
}

double calculateTotalCost(List<double> prices, double taxRate) {
  double subtotal = 0;
  for (double price in prices) {
    subtotal += price;
  }
  return subtotal * (1 + taxRate);
}
