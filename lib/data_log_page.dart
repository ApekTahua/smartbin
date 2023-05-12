import 'package:flutter/material.dart';
import 'home_page.dart';
import 'trash_bin_page.dart';

class DataLogPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'This is the Data Log page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
