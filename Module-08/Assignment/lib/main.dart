import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Profile'),
        ),
        body: OrientationBuilder(
          builder: (context, orientation) {
            if (orientation == Orientation.portrait) {
              // Portrait Layout
              return buildPortraitLayout();
            } else {
              // Landscape Layout
              return buildLandscapeLayout();
            }
          },
        ),
      ),
    );
  }

  Widget buildPortraitLayout() {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 110,
              backgroundImage: NetworkImage('https://picsum.photos/200'),
            ),
          ),
          Text('Sakib',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          Text(
            'Hello I am Nazmus Sakib',
            style: TextStyle(fontSize: 16),
            textAlign: TextAlign.center,
          ),
          Container(
            height: 300, //
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: 6,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.all(4.0),
                  child: ClipRRect(
                    borderRadius:
                        BorderRadius.circular(8.0),
                    child: Image.network('https://picsum.photos/200',
                        fit: BoxFit.cover),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget buildLandscapeLayout() {
    return SingleChildScrollView(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 100,
              backgroundImage: NetworkImage('https://picsum.photos/200'),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Sakib',
                    style:
                        TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                Text(
                  'Hello I am Nazmus Sakib',
                  style: TextStyle(fontSize: 16),
                ),
                Container(
                  height: 300,
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                    ),
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.all(4.0),
                        child: ClipRRect(
                          borderRadius:
                              BorderRadius.circular(8.0), // Make images round
                          child: Image.network('https://picsum.photos/200',
                              fit: BoxFit.cover),
                        ),
                      );
                    },
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
