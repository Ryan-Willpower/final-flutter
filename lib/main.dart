import 'package:flutter/material.dart';
import './Screen.dart';

// ส่วน Main จะเป็นส่วนหลักในการแสดงผล ซึ่ง home screen จะไปเรียก class Home
class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Route',
      // เรียกใช้ Screen class
      home: Screen(),
    );
  }
}

void main() => runApp(Main());