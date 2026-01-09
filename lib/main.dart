import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //Root widget
      home: Scaffold(
        body: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 100,),
            Align(alignment: Alignment.topCenter,child: Text('What do you thing you will mostly use?')),
            Align(alignment: Alignment.center,
              child: Text(
                'Top on all that apply.This will help us\n customise your home page',
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),

      ),
    );
  }
}
