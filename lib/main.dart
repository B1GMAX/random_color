import 'package:flutter/material.dart';
import 'package:random_color/home_page.dart';

void main() {
  runApp(Main());
}

/// Main class
class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
