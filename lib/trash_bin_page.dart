import 'package:flutter/material.dart';
import 'home_page.dart';
import 'data_log_page.dart';

class TrashBinPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'This is the Trash Bin page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
