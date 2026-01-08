import 'dart:io';

import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFecf5fa),
      body: Column(
        children: [
          SizedBox(height: 60),
          Text(
            "What do you think you'll\n          mostly use?",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
          ),
          SizedBox(height: 80),
          Text(
            "Tap on all that apply.This will help us\n        customize your home page.",
            style: TextStyle(fontWeight: FontWeight.w200, fontSize: 25),
          ),
          SizedBox(height: 80),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              build_icon_container(Icons.settings, "Maintainable\n Settings"),
              build_icon_container(
                Icons.integration_instructions,
                "Integrations",
              ),
              build_icon_container(Icons.lightbulb, "  Light\nControl"),
            ],
          ),
          SizedBox(height: 30),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,

            children: [
              build_icon_container(Icons.leak_add, "   Leak\nDetector"),
              build_icon_container(
                Icons.severe_cold,
                "Temperature\n     Control",
              ),
              build_icon_container(Icons.key, " Guest\nAccess"),
            ],
          ),
          SizedBox(height: 60),

          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              maximumSize: Size(450, 70),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  25,
                ), // Adjust radius as needed
              ),
            ),
            onPressed: () {},
            child: Center(
              child: Text(
                "Next",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget build_icon_container(IconData icon, String text) {
  return Column(
    children: [
      Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(child: Icon(icon, size: 60)),
      ),
      Text(text),
    ],
  );
}
