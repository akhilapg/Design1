import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFecf5fa),
      appBar: AppBar(
        backgroundColor: Color(0xFFecf5fa),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.menu),
        ),
        title: const Text('Home'),
        centerTitle: true,
        actions: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Center(child: Icon(Icons.notifications_active)),
          ),
        ],
      ),
      body: Column(
        children: [
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(width: 20),
              ClipRRect(
                borderRadius: BorderRadius.circular(23),
                child: Image.asset(
                  "assets/images/profile_pic.jpg",
                  width: 100,
                  height: 100,
                  fit: BoxFit.fitHeight,
                ),
              ),
              SizedBox(width: 60),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('JUNE 14 2020', style: TextStyle(fontSize: 15)),
                  Text(
                    'Good Morning,\nMichael',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 60),

          Row(
            children: [
              Text("40^\nTemprature"),
              SizedBox(width: 30),
              Text("40^\nTemprature"),
            ],
          ),
          Row(
            children: [
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Icon(Icons.home, size: 20),
                        Text("Entry"),
                        Text("OFF"),
                      ],
                    ),
                    Transform.rotate(
                      angle: -3.14159 / 2, // Rotate 90 degrees counterclockwise
                      child: Switch(value: true, onChanged: (bool value) {}),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            width: 300,
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Row(children: [Text("Add\nNew Controle") ,Icon(Icons.add)]),
          ),
        ],
      ),
    );
  }
}
