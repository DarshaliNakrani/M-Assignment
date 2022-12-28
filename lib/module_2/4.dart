//create an application to change background when button is clicked

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool click = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: (click == false) ? Colors.white30 : Colors.white,
        appBar: AppBar(
          title: Text('Background Color'),
        ),
        body: Padding(
          padding: EdgeInsets.all(8.0),
          child: Center(
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  click = !click;
                });
              },
              child: null,
              // child: Padding(
              //   padding: EdgeInsets.all(10.0),
              // child: Icon(
              //   (click == false) ? Colors.white : Icons.table_chart,
              //   size: 60,
              // ),
            ),
          ),
        ),
      ),
    );
  }
}
