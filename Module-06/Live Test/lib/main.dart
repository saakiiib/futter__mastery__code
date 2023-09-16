import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Add this line
      home: ShoppingListScreen(),
    );
  }
}

class ShoppingListScreen extends StatelessWidget {
  final List<Map<String, dynamic>> shoppingItems = [
    {"name": "Milk", "icon": Icons.local_drink},
    {"name": "Bread", "icon": Icons.local_grocery_store},
    {"name": "Eggs", "icon": Icons.kitchen},
    {"name": "Apples", "icon": Icons.shopping_cart},
    {"name": "Cereal", "icon": Icons.fastfood},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("My Shopping List"),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              // Add your cart action here
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: shoppingItems.length,
        itemBuilder: (context, index) {
          final item = shoppingItems[index];
          return ListTile(
            leading: Icon(item["icon"]),
            title: Text(item["name"]),
            onTap: () {
              // Add your item click action here
            },
          );
        },
      ),
    );
  }
}
