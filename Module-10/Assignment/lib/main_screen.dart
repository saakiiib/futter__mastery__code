import 'package:flutter/material.dart';
import 'edit.dart';
import 'model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<ItemModel> items = [];
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();

  void _addItem() {
    setState(() {
      items.add(ItemModel(titleController.text, descriptionController.text));
      titleController.clear();
      descriptionController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          const SliverAppBar(
            floating: true,
            backgroundColor: Colors.transparent,
            expandedHeight: 200.0,
            flexibleSpace: FlexibleSpaceBar(
              title: null,
              background: null,
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              final item = items[index];
              Icon leadingIcon;

              if (item.edited) {
                leadingIcon = const Icon(Icons.check, color: Colors.green);
              } else {
                leadingIcon = const Icon(Icons.edit, color: Colors.orange);
              }

              return ListTile(
                leading: leadingIcon,
                title: Text(item.title),
                subtitle: Text(item.description),
                onLongPress: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text('Options'),
                      actions: <Widget>[
                        TextButton(
                          child: const Text('Edit'),
                          onPressed: () {
                            Navigator.of(context).pop();
                            showModalBottomSheet(
                              context: context,
                              builder: (context) => ItemEditSheet(item, () {
                                setState(() {
                                  item.edited = true;
                                });
                              }),
                            );
                          },
                        ),
                        TextButton(
                          child: const Text('Delete'),
                          onPressed: () {
                            setState(() {
                              items.removeAt(index);
                            });
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    ),
                  );
                },
              );
            }, childCount: items.length),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      TextField(
                        controller: titleController,
                        decoration: InputDecoration(
                          labelText: 'Add Title',
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.blue),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      TextField(
                        controller: descriptionController,
                        decoration: InputDecoration(
                          labelText: 'Add Description',
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.blue),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: _addItem,
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                        child: const Text('Add'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
