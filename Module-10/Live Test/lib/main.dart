// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  // ignore: duplicate_ignore
  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> items = List<String>.generate(50, (int index) => 'Item $index');
  final List<bool> selectedItems = List<bool>.generate(50, (int index) => false);

  void _showSelectionCountDialog() {
    int count = selectedItems.where((bool itemSelected) => itemSelected).length;

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Selected Items'),
          content: Text('You have selected $count items.'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Selection Screen'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return SelectableListItem(
            item: items[index],
            isSelected: selectedItems[index],
            onSelected: (bool? selected) {
              setState(() {
                selectedItems[index] = selected ?? false;
              });
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _showSelectionCountDialog,
        mini: true, // Set it to true to make it smaller (tight)
        backgroundColor: Colors.blue, // Set the button color as needed
        foregroundColor: Colors.white, // Set the icon color as needed
        elevation: 6.0,
        child: const Icon(Icons.info), // Adjust the elevation as needed
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}

class SelectableListItem extends StatelessWidget {
  final String item;
  final bool isSelected;
  final ValueChanged<bool?> onSelected;

  const SelectableListItem({super.key,
    required this.item,
    required this.isSelected,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(item),
      trailing: Checkbox(
        value: isSelected,
        onChanged: onSelected,
      ),
    );
  }
}
