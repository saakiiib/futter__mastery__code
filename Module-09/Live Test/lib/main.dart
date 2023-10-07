import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
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

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String selectedSize = '';

  void _changeButtonColor(String size) {
    setState(() {
      selectedSize = size;
    });
    _showSnackbar(size);
  }

  void _showSnackbar(String size) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("Selected Size: $size"),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Size Selector'),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    child: ElevatedButton(
                      onPressed: () => _changeButtonColor('S'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: selectedSize == 'S' ? Colors.orange : Colors.grey,
                        minimumSize: const Size(100.0, 100.0),
                      ),
                      child: const Text(
                        'S',
                        style: TextStyle(fontSize: 24.0),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    child: ElevatedButton(
                      onPressed: () => _changeButtonColor('M'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: selectedSize == 'M' ? Colors.orange : Colors.grey,
                        minimumSize: const Size(100.0, 100.0),
                      ),
                      child: const Text(
                        'M',
                        style: TextStyle(fontSize: 24.0),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    child: ElevatedButton(
                      onPressed: () => _changeButtonColor('L'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: selectedSize == 'L' ? Colors.orange : Colors.grey,
                        minimumSize: const Size(100.0, 100.0),
                      ),
                      child: const Text(
                        'L',
                        style: TextStyle(fontSize: 24.0),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    child: ElevatedButton(
                      onPressed: () => _changeButtonColor('XL'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: selectedSize == 'XL' ? Colors.orange : Colors.grey,
                        minimumSize: const Size(100.0, 100.0),
                      ),
                      child: const Text(
                        'XL',
                        style: TextStyle(fontSize: 24.0),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    child: ElevatedButton(
                      onPressed: () => _changeButtonColor('XXL'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: selectedSize == 'XXL' ? Colors.orange : Colors.grey,
                        minimumSize: const Size(100.0, 100.0),
                      ),
                      child: const Text(
                        'XXL',
                        style: TextStyle(fontSize: 24.0),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    child: ElevatedButton(
                      onPressed: () => _changeButtonColor('XXXL'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: selectedSize == 'XXXL' ? Colors.orange : Colors.grey,
                        minimumSize: const Size(100.0, 100.0),
                      ),
                      child: const Text(
                        'XXXL',
                        style: TextStyle(fontSize: 24.0),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}