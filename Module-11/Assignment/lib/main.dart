import 'package:flutter/material.dart';

import 'screens/photo_list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Photo Gallery App',
      home: PhotoListScreen(),
    );
  }
}
