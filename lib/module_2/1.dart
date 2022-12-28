// 1. Create an application to take input number from user and print its reverse number in
// TextView without button

import 'package:flutter/material.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Reverse number',
      home: ReverseNum(),
    );
  }
}
class ReverseNum extends StatefulWidget {
  const ReverseNum({Key? key}) : super(key: key);

  @override
  State<ReverseNum> createState() => _ReverseNumState();
}

class _ReverseNumState extends State<ReverseNum> {
  String num = '';
  var numberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reverse Number'),
      ),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Container(
                child: TextField(
                  onChanged: (value) {
                    setState(() {
                      String rev = numberController.text;
                      num = rev.split('').reversed.join();
                    });
                  },
                  keyboardType: TextInputType.number,
                  controller: numberController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      )
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              num,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

