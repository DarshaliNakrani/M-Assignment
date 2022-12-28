//Write a program in android display screen color which the Color will be select from the radio
// button.

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home:ColorChangewithRadio(),
    );
  }
}
class ColorChangewithRadio extends StatefulWidget {
  const ColorChangewithRadio({Key? key}) : super(key: key);

  @override
  State<ColorChangewithRadio> createState() => _ColorChangewithRadioState();
}

class _ColorChangewithRadioState extends State<ColorChangewithRadio> {
  Color selectedColor = Colors.white;
  String? color;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: selectedColor,
        title: Text('Select Color',style: TextStyle(color: Colors.black)),
      ),
      body: SingleChildScrollView(
        child: Container(
          color:selectedColor,
          child: Column(
            children: [
              RadioListTile(
                title: Text('BLUE'),
                value: "Blue",
                groupValue: color,
                onChanged:(value) {
                  setState(() {
                    color = value.toString();
                    selectedColor = Colors.blue;
                  });
                },),
              RadioListTile(
                title: Text('GREEN'),
                value: "Green",
                groupValue: color,
                onChanged:(value) {
                  setState(() {
                    color = value.toString();
                    selectedColor = Colors.green;
                  });
                },),
              RadioListTile(
                title: Text('PURPLE'),
                value: "Purple",
                groupValue: color,
                onChanged:(value) {
                  setState(() {
                    color = value.toString();
                    selectedColor = Colors.purple;
                  });
                },),
              RadioListTile(
                title: Text('GREY'),
                value: "Gyer",
                groupValue: color,
                onChanged:(value) {
                  setState(() {
                    color = value.toString();
                    selectedColor = Colors.grey;
                  });
                },),
              RadioListTile(
                title: Text('YELLOW'),
                value: "Yellow",
                groupValue: color,
                onChanged:(value) {
                  setState(() {
                    color = value.toString();
                    selectedColor = Colors.yellow;
                  });
                },),
              RadioListTile(
                title: Text('BLUE'),
                value: "Blue",
                groupValue: color,
                onChanged:(value) {
                  setState(() {
                    color = value.toString();
                    selectedColor = Colors.blue;
                  });
                },),
              RadioListTile(
                title: Text('BROWEN'),
                value: "Brown",
                groupValue: color,
                onChanged:(value) {
                  setState(() {
                    color = value.toString();
                    selectedColor = Colors.brown;
                  });
                },),
              RadioListTile(
                title: Text('TEAL'),
                value: "Teal",
                groupValue: color,
                onChanged:(value) {
                  setState(() {
                    color = value.toString();
                    selectedColor = Colors.teal;
                  });
                },),
              RadioListTile(
                title: Text('RED'),
                value: "Red",
                groupValue: color,
                onChanged:(value) {
                  setState(() {
                    color = value.toString();
                    selectedColor = Colors.red;
                  });
                },),
              RadioListTile(
                title: Text('ORANGE'),
                value: "Orange",
                groupValue: color,
                onChanged:(value) {
                  setState(() {
                    color = value.toString();
                    selectedColor = Colors.orange;
                  });
                },),
              RadioListTile(
                title: Text('PINK'),
                value: "Pink",
                groupValue: color,
                onChanged:(value) {
                  setState(() {
                    color = value.toString();
                    selectedColor = Colors.pink;
                  });
                },),

            ],
          ),
        ),
      ),
    );
  }
}