import 'package:flutter/material.dart';
import 'model.dart';

class ItemEditSheet extends StatelessWidget {
  final ItemModel item;
  final Function editCallback;

  const ItemEditSheet(this.item, this.editCallback, {super.key});

  @override
  Widget build(BuildContext context) {
    final titleController = TextEditingController(text: item.title);
    final descriptionController = TextEditingController(text: item.description);

    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            controller: titleController,
            decoration: const InputDecoration(
              labelText: 'Edit Title',
            ),
          ),
          TextField(
            controller: descriptionController,
            decoration: const InputDecoration(
              labelText: 'Edit Description',
            ),
          ),
          ElevatedButton(
            onPressed: () {
              item.title = titleController.text;
              item.description = descriptionController.text;
              Navigator.of(context).pop();
              editCallback(); // Call the callback to set edited status to true
            },
            child: const Text('Save'),
          ),
        ],
      ),
    );
  }
}
