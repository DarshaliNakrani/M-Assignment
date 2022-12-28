//create an application to display Textview when checkbox is checked and hide otherwise


import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: CheckBox(),
    );
  }
}
class CheckBox extends StatefulWidget {
  const CheckBox({Key? key}) : super(key: key);

  @override
  State<CheckBox> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  bool isChecked = false;
  String text = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkbox'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 80,right: 70),
              child: ListTile(
                title: Text(
                  text,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {

                },
                leading:Checkbox(
                  value: isChecked,
                  onChanged:(value) {
                    setState(() {
                      isChecked = value!;
                      if(isChecked==false){
                        text = '';
                      }else{
                        text = 'Terms And Condition';
                      }
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}