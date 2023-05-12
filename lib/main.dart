import 'package:flutter/material.dart';
import 'opening.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Bin App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: OpeningPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
