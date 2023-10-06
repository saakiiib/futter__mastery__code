import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
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
        duration: Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Size Selector'),
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
                    padding: EdgeInsets.all(16.0),
                    child: ElevatedButton(
                      onPressed: () => _changeButtonColor('S'),
                      style: ElevatedButton.styleFrom(
                        primary: selectedSize == 'S' ? Colors.orange : Colors.grey,
                        minimumSize: Size(100.0, 100.0),
                      ),
                      child: Text(
                        'S',
                        style: TextStyle(fontSize: 24.0),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(16.0),
                    child: ElevatedButton(
                      onPressed: () => _changeButtonColor('M'),
                      style: ElevatedButton.styleFrom(
                        primary: selectedSize == 'M' ? Colors.orange : Colors.grey,
                        minimumSize: Size(100.0, 100.0),
                      ),
                      child: Text(
                        'M',
                        style: TextStyle(fontSize: 24.0),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(16.0),
                    child: ElevatedButton(
                      onPressed: () => _changeButtonColor('L'),
                      style: ElevatedButton.styleFrom(
                        primary: selectedSize == 'L' ? Colors.orange : Colors.grey,
                        minimumSize: Size(100.0, 100.0),
                      ),
                      child: Text(
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
                    padding: EdgeInsets.all(16.0),
                    child: ElevatedButton(
                      onPressed: () => _changeButtonColor('XL'),
                      style: ElevatedButton.styleFrom(
                        primary: selectedSize == 'XL' ? Colors.orange : Colors.grey,
                        minimumSize: Size(100.0, 100.0),
                      ),
                      child: Text(
                        'XL',
                        style: TextStyle(fontSize: 24.0),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(16.0),
                    child: ElevatedButton(
                      onPressed: () => _changeButtonColor('XXL'),
                      style: ElevatedButton.styleFrom(
                        primary: selectedSize == 'XXL' ? Colors.orange : Colors.grey,
                        minimumSize: Size(100.0, 100.0),
                      ),
                      child: Text(
                        'XXL',
                        style: TextStyle(fontSize: 24.0),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(16.0),
                    child: ElevatedButton(
                      onPressed: () => _changeButtonColor('XXXL'),
                      style: ElevatedButton.styleFrom(
                        primary: selectedSize == 'XXXL' ? Colors.orange : Colors.grey,
                        minimumSize: Size(100.0, 100.0),
                      ),
                      child: Text(
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
