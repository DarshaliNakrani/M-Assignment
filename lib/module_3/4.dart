//Write a code to display alert dialog with list of cities and Single choice selection display selected
// city in TextView

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: AlertDialogbox(),
    );
  }
}
class AlertDialogbox extends StatefulWidget {
  const AlertDialogbox({Key? key}) : super(key: key);

  @override
  State<AlertDialogbox> createState() => _AlertDialogboxState();
}

class _AlertDialogboxState extends State<AlertDialogbox> {
  String? city;
  var ans = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () async {
                  var result = await alertdialogbox(context);
                }, child: Text('Press to select city')),
            SizedBox(height: 20,),
            Text("City : $ans",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }

  alertdialogbox(BuildContext context) {
    return showDialog(context: context, builder:(context) {
      return AlertDialog(
        title: Text('Select Your City'),
        actions: [
          RadioListTile(
            title: Text('Surat'),
            value:'surat',
            groupValue: city,
            onChanged: (value) {
              Navigator.pop(context);
              setState(() {
                city = value.toString();
                ans = 'Surat';
              });
            },),
          RadioListTile(
            title: Text('Vadodra'),
            value:'vadodra',
            groupValue: city,
            onChanged: (value) {
              Navigator.pop(context);
              setState(() {
                city = value.toString();
                ans = 'Vadodra';
              });
            },),
          RadioListTile(
            title: Text('Ahemdabad'),
            value:'ahemdabad',
            groupValue: city,
            onChanged: (value) {
              Navigator.pop(context);
              setState(() {
                city = value.toString();
                ans = 'Ahemdabad';
              });
            },),
          RadioListTile(
            title: Text('Bhavnagar'),
            value:'bhavnagar',
            groupValue: city,
            onChanged: (value) {
              Navigator.pop(context);
              setState(() {
                city = value.toString();
                ans = 'Bhavnagar';
              });
            },),
          RadioListTile(
            title: Text('Navsari'),
            value:'navsari',
            groupValue: city,
            onChanged: (value) {
              Navigator.pop(context);
              setState(() {
                city = value.toString();
                ans = 'Navsari';
              });
            },),
        ],
      );
    },
    );
  }
}