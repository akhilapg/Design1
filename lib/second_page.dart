// import 'dart:ffi';

import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFecf5fa),
      appBar: AppBar(
        //appbar
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
        //column
        children: [
          Row(
            //row1
            children: [
              // column1 image
              SizedBox(width: 10),
              ClipRRect(
                borderRadius: BorderRadius.circular(23),
                child: Image.asset(
                  "assets/images/profile_pic.jpg",
                  width: 100,
                  height: 100,
                  fit: BoxFit.fitHeight,
                ),
              ),
              SizedBox(width: 20),
              Column(
                //row1 column2 text
                crossAxisAlignment: CrossAxisAlignment.start, //text arrangement
                children: [
                  Text(
                    //first text
                    'JUNE 14 2020',
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    //second text
                    'Good Morning,\nMichael',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20), //gap
          Row(
            //row2
            children: [
              Text("40^\nTEMPERATURE"),
              SizedBox(width: 150), //gap
              Text("58%\nHUMIDITY"),
            ],
          ),
          SizedBox(height: 10),
          Row(
            //row3
            children: [
                secondIconContainer(Icons.home, "ENTRY", "OPEN",true,true,Colors.green),
              secondIconContainer(Icons.lightbulb, "LIGHTS", "ON",true,false,Colors.green),
            ],
          ),

          SizedBox(height: 10),
          Row(
            //row3
            children: [
              secondIconContainer(Icons.leak_add, "LEAKS", "NOT DETECTED",false,false,Colors.grey),
              secondIconContainer(Icons.light, "LIGHTS", "OFF",true,true,Colors.grey),
            ],
          ),
          SizedBox(height: 10),


          Container(
            width: 300,
            height: 70,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white),
            child: Row(
              children: [
                Expanded(child: Text("ADD\nNEW CONTROL")),
                Spacer(),
                Icon(Icons.add)
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget secondIconContainer(IconData icon, String text, String status,bool isSwitchNeeded,bool isSwitch,Color color) {
  return Column(
    children: [
      Row(
        //row3
        children: [
          SizedBox(width: 20),
          Container(
            //container design
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10),
                    Center(child: Icon(icon, size: 30)),
                    SizedBox(height: 10),
                    Text(
                      text,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                    ),
                    Text(
                      status,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
               isSwitchNeeded? Transform.rotate(
                  // alignment: AlignmentGeometry.directional(),
                  angle: -3.14159 / 2, // Rotate 90 degrees counterclockwise
                  child: Switch(
                    value: isSwitch,
                    onChanged: (bool value) {},
                    activeThumbColor: color,
                    inactiveThumbColor: color,
                  ),
                ): SizedBox(),
              ],
            ),
          ),
        ],
      ),
    ],
  );
}
