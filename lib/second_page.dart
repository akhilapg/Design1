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
        title: const Text(
          'Home',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
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
                    style: TextStyle(fontSize: 10),
                  ),
                  Text(
                    //second text
                    'Good Morning,\nMichael',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20), //gap
          Row(
            //row2
            children: [
              SizedBox(width: 10),
              Text("40^\nTEMPERATURE"),
              SizedBox(width: 90), //gap
              Text("58%\nHUMIDITY"),
            ],
          ),
          SizedBox(height: 20),
          Row(
            //row3
            children: [
              // SizedBox(width: 10),
              secondIconContainer(
                Icons.home,
                "ENTRY",
                "OPEN",
                true,
                true,
                Colors.green,1
              ),
              SizedBox(width: 20),
              secondIconContainer(
                Icons.lightbulb,
                "LIGHTS",
                "ON",
                true,
                false,
                Colors.green,1
              ),
            ],
          ),

          SizedBox(height: 10),
          Row(
            //row3
            children: [
              secondIconContainer(
                Icons.leak_add,
                "LEAKS",
                "NOT DETECTED",
                false,
                false,
                Colors.grey,2
              ),
              SizedBox(width: 20),
              secondIconContainer(
                Icons.device_thermostat,
                "THERMOSTAT",
                "OFF",
                true,
                true,
                Colors.grey,2
              ),
            ],
          ),
          SizedBox(height: 10),

          Container(
            width: 300,
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xFFecf5fa),
              border: Border(
                top: BorderSide(color: Colors.white, width: 3.0),
                left: BorderSide(color: Colors.white, width: 3.0),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.white,
                  blurRadius: 8,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(child: Text("   ADD\n   NEW CONTROL")),
                Spacer(),
                Icon(Icons.add),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget secondIconContainer(
  IconData icon,
  String text,
  String status,
  bool isSwitchNeeded,
  bool isSwitch,
  Color color,int index
) {
  return Column(
    children: [
      Row(
        //row3
        children: [
          SizedBox(width: 40),
          Container(
            //container design
            width: 150,
            height: 120,
            decoration: BoxDecoration(
              color: Color(0xFFecf5fa),
              border: Border(
                top: BorderSide(color: Colors.white, width: 3.0),
                left: BorderSide(color: Colors.white, width: 3.0),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.white,
                  blurRadius: 8,
                  offset: Offset(0, 2),
                ),
              ],
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
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      status,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                        color: index==1 ?Colors.green:Colors.grey,
                      ),
                    ),
                  ],
                ),
                isSwitchNeeded
                    ? Transform.rotate(
                        // alignment: AlignmentGeometry.directional(),
                        angle:
                            -3.14159 / 2, // Rotate 90 degrees counterclockwise
                        child: Switch(
                          value: isSwitch,
                          onChanged: (bool value) {},
                          activeThumbColor: color,
                          inactiveThumbColor: color,
                        ),
                      )
                    : SizedBox(),
              ],
            ),
          ),
        ],
      ),
    ],
  );
}
