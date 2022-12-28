//Create an application to input 2 numbers from user and all numbers between those 2
// numbers in next activity

import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Number Between',
      home: NumberBetween(),
    );
  }
}

class NumberBetween extends StatefulWidget {
  const NumberBetween({Key? key}) : super(key: key);

  @override
  State<NumberBetween> createState() => _NumberBetweenState();
}

class _NumberBetweenState extends State<NumberBetween> {
  List<String> numbers = [];
  var number = '';
  TextEditingController _number1 = TextEditingController();
  TextEditingController _number2 = TextEditingController();
  List<String> numberds = [for (var i = 0; i <= 99; i++) i.toString()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Number Between'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(40),
          child: Column(
            children: [
              Text(
                'Limit is Between 0 To 99',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(left: 100, right: 100),
                child: TextField(
                  controller: _number1,
                  keyboardType: TextInputType.number,
                  maxLength: 2,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(220),
                      )),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(left: 100, right: 100),
                child: TextField(
                  controller: _number2,
                  keyboardType: TextInputType.number,
                  maxLength: 2,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(220),
                      )),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // var num1 = _number1.text;
                  //var num2 = _number2.text;

                  int n1 = int.parse(_number1.text);
                  int n2 = int.parse(_number2.text);
                  setState(() {
                    number = numberds.getRange(n1 + 1, n2).toString();
                  });
                  // number = Random().nextInt(99).toString();
                },
                child: Text('GET'),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                number,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
