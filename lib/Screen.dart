import 'package:flutter/material.dart';
import './views/button.dart';

class Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Duck'),
      ),
      // เรียกใช้ HomeButton class
      body: HomeButton(),
    );
  }
}