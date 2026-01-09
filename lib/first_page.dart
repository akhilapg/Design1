import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFecf5fa),
      body: Column(
        children: [
          SizedBox(height: 30),
          Text(
            "What do you think you'll\n         mostly use?",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          SizedBox(height: 40),
          Text(
            "Tap on all that apply.This will help us\n       customize your home page.",
            style: TextStyle(fontSize: 15),
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              buildIconContainer(Icons.settings, "Maintainable\n   Requests"),
              buildIconContainer(
                Icons.integration_instructions,
                "Integrations",
              ),
              buildIconContainer(Icons.light_mode, "    Light\n  Control"),
            ],
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              buildIconContainer(Icons.leak_add, "   Leak\n Detector"),
              buildIconContainer(Icons.severe_cold, "Temperature\n    Control"),
              buildIconContainer(Icons.key, "   Guest\n  Access"),
            ],
          ),
          SizedBox(height: 40),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              maximumSize: Size(400, 50),
              // minimumSize: Size(150,48),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            onPressed: () {},
            child: Center(
              child: Text(
                "Next",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget buildIconContainer(IconData icon, String text) {
  return Column(
    children: [
      Container(
        width: 70,
        height: 70,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(child: Icon(icon, size: 40)),
      ),
      Text(text),
    ],
  );
}
