import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  double custFontSize = 20;

  void changeFontSize() async{
    setState(() {
      custFontSize;
    });
  }

  increment(){
    setState((){
      custFontSize+1;
    });
  }

  decrement(){
    setState((){
      custFontSize-1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Increment Decrement'),
      ),
      body: Center(
          child: Column(
              children:[
            Text('HELLO WORLD !!!!!',
              style: TextStyle(fontSize: custFontSize),
            ),

          ElevatedButton(
                onPressed: ((){
                  custFontSize--;
                  changeFontSize();
                }),
                child: Text(
                  '-',
                  style: TextStyle(fontSize: 24),
                )),
            SizedBox(
              width: 20,
            ),
            ElevatedButton(
                onPressed: ((){
                  custFontSize++;
                  changeFontSize();
                 }),
                child: Text(
                  '+',
                  style: TextStyle(fontSize: 24),
                ))
          ]
          )
      ),
    );
  }
}
