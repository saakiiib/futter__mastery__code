// selection_dialog.dart
import 'package:flutter/material.dart';

class SelectionDialogue extends StatelessWidget {
  final Set<String> selectedItems;
  final ValueChanged<Set<String>> onSelectionChanged;

  SelectionDialogue({
    required this.selectedItems,
    required this.onSelectionChanged,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Selected Items'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: selectedItems.map((item) {
          return ListTile(
            title: Text(item),
            trailing: IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                onSelectionChanged(selectedItems..remove(item));
                Navigator.of(context).pop();
              },
            ),
          );
        }).toList(),
      ),
      actions: <Widget>[
        TextButton(
          child: Text('OK'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}