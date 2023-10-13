// item_selection_screen.dart
import 'package:flutter/material.dart';
import 'selectable_list_item.dart';
import 'selection_dialog.dart';

class ItemSelectionScreen extends StatefulWidget {
  @override
  _ItemSelectionScreenState createState() => _ItemSelectionScreenState();
}

class _ItemSelectionScreenState extends State<ItemSelectionScreen> {
  List<String> items = ['Item 1', 'Item 2', 'Item 3'];
  Set<String> selectedItems = Set();

  void _onItemTap(String item) {
    setState(() {
      if (selectedItems.contains(item)) {
        selectedItems.remove(item);
      } else {
        selectedItems.add(item);
      }
    });
  }

  void _showSelectionDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return SelectionDialogue(
          selectedItems: selectedItems,
          onSelectionChanged: (newSelection) {
            setState(() {
              selectedItems = newSelection;
            });
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Item Selection Screen'),
        actions: [
          IconButton(
            icon: Icon(Icons.check),
            onPressed: _showSelectionDialog,
          ),
        ],
      ),
      body: ListView(
        children: items.map((item) {
          return SelectableListItem(
            item: item,
            isSelected: selectedItems.contains(item),
            onTap: () => _onItemTap(item),
          );
        }).toList(),
      ),
    );
  }
}