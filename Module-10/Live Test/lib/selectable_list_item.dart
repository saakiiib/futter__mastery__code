// selectable_list_item.dart
import 'package:flutter/material.dart';

class SelectableListItem extends StatelessWidget {
  final String item;
  final bool isSelected;
  final Function onTap;

  SelectableListItem({
    required this.item,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(item),
      tileColor: isSelected ? Colors.blue : null,
      onTap: () {
        onTap();
      },
    );
  }
}