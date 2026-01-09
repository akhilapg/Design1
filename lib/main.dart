import 'package:design1_iotapp/first_page.dart';
import 'package:design1_iotapp/second_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SecondScreen(),
      debugShowCheckedModeBanner: false,
    ); //Root widget
  }
}
