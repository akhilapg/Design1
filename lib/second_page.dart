import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFecf5fa),
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        title: const Text('Home'),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.add_alert))],
      ),
      body: Column(
        children: [
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('JUNE 14 2020', style: TextStyle(fontSize: 15)),
              Text(
                'Good Morning,\nMichael',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ],
          ),


        ],
      )
    );
  }
}

