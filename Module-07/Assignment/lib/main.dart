import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Product {
  final String name;
  final int maxPurchase;
  int quantity;

  Product({
    required this.name,
    required this.maxPurchase,
    this.quantity = 0,
  });
}

class ProductList extends StatefulWidget {
  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  List<Product> products = [
    Product(name: "Apples", maxPurchase: 5),
    Product(name: "Bananas", maxPurchase: 5),
    Product(name: "Oranges", maxPurchase: 5),
    Product(name: "Grapes", maxPurchase: 5),
    Product(name: "Strawberries", maxPurchase: 5),
  ];

  void _buyNow(int index) {
    setState(() {
      if (products[index].quantity < products[index].maxPurchase) {
        products[index].quantity++;
        if (products[index].quantity == 5) {
          _showCongratulationsDialog(products[index]);
        }
      }
    });
  }

  void _showCongratulationsDialog(Product product) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Congratulations!"),
          content: Text("You've bought 5 ${product.name}!"),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("OK"),
            ),
          ],
        );
      },
    );
  }

  void _goToCart() {
    final List<Product> cartItems =
        products.where((product) => product.quantity >= 5).toList();
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => CartPage(cartItems: cartItems),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product List"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(products[index].name),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Quantity: ${products[index].quantity}"),
                ElevatedButton(
                  onPressed: () => _buyNow(index),
                  child: Text("Buy Now"),
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _goToCart,
        child: Icon(Icons.shopping_cart),
      ),
    );
  }
}

class CartPage extends StatelessWidget {
  final List<Product> cartItems;

  CartPage({required this.cartItems});

  int getTotalItems() {
    return cartItems.length;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
        centerTitle: true,
      ),
      body: Center(
        child: Text("Total Items in Cart: ${getTotalItems()}"),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProductList(),
    );
  }
}
