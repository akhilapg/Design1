import 'package:design1_iotapp/first_screen.dart';
import 'package:flutter/material.dart';

void main() { //this is entrypoint of this app when the app starting time main function is calling by compiler
  runApp(MyApp());// this is calling for rendrring our first app
}

class MyApp extends StatelessWidget { //this is iniatal root of widget
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(home: FirstScreen(),theme: ThemeData(useMaterial3: true,primaryColor: Colors.black),);
  }
}