//  6. Write a code to select Date on button's click event

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home:DatePicker(),
    );
  }
}
class DatePicker extends StatefulWidget {
  const DatePicker({Key? key}) : super(key: key);

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () async {
              var result = await datepicker(context);
            }, child:Text('Pick a Date')
            ),
          ],
        ),
      ),
    );
  }

  datepicker(BuildContext context) async {
    return  await showDialog(context: context, builder:(context) {
      return DatePickerDialog(
          initialDate: DateTime.now(),
          firstDate:DateTime(2000),
          lastDate:DateTime(2025)
      );
    },
    );
  }
}