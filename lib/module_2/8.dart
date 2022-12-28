//Write a program to show four images around Textview.

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: ImageAround(),
    );
  }
}

class ImageAround extends StatefulWidget {
  const ImageAround({Key? key}) : super(key: key);

  @override
  State<ImageAround> createState() => _ImageAroundState();
}

class _ImageAroundState extends State<ImageAround> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Image Around Textview'),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Image.network(
                      width: 180,
                      height: 180,
                      "https://www.google.com/imgres?imgurl=https%3A%2F%2Fichef.bbci.co.uk%2Fnews%2F999%2Fcpsprodpb%2F15951%2Fproduction%2F_117310488_16.jpg&imgrefurl=https%3A%2F%2Fwww.bbc.co.uk%2Fnews%2Fin-pictures-56211135&tbnid=Hc5jHkS6Vw5sZM&vet=12ahUKEwiZiJel-5r8AhWDi9gFHfvNDg0QMygIegUIARDcAQ..i&docid=aPImLvUOjpk0SM&w=999&h=749&q=picture&ved=2ahUKEwiZiJel-5r8AhWDi9gFHfvNDg0QMygIegUIARDcAQ"),
                  SizedBox(
                    width: 30,
                  ),
                  Image.network(
                      width: 180,
                      height: 180,
                      "https://www.google.com/imgres?imgurl=https%3A%2F%2Fichef.bbci.co.uk%2Fnews%2F999%2Fcpsprodpb%2F15951%2Fproduction%2F_117310488_16.jpg&imgrefurl=https%3A%2F%2Fwww.bbc.co.uk%2Fnews%2Fin-pictures-56211135&tbnid=Hc5jHkS6Vw5sZM&vet=12ahUKEwiZiJel-5r8AhWDi9gFHfvNDg0QMygIegUIARDcAQ..i&docid=aPImLvUOjpk0SM&w=999&h=749&q=picture&ved=2ahUKEwiZiJel-5r8AhWDi9gFHfvNDg0QMygIegUIARDcAQ"),
                ],
              ),
            ),
            Text('NATURE',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 130)),
            Expanded(
              child: Row(
                children: [
                  Image.network(
                      width: 180,
                      height: 180,
                      "https://www.google.com/imgres?imgurl=https%3A%2F%2Fichef.bbci.co.uk%2Fnews%2F999%2Fcpsprodpb%2F15951%2Fproduction%2F_117310488_16.jpg&imgrefurl=https%3A%2F%2Fwww.bbc.co.uk%2Fnews%2Fin-pictures-56211135&tbnid=Hc5jHkS6Vw5sZM&vet=12ahUKEwiZiJel-5r8AhWDi9gFHfvNDg0QMygIegUIARDcAQ..i&docid=aPImLvUOjpk0SM&w=999&h=749&q=picture&ved=2ahUKEwiZiJel-5r8AhWDi9gFHfvNDg0QMygIegUIARDcAQ"),
                  SizedBox(
                    width: 30,
                  ),
                  Image.network(
                      width: 180,
                      height: 180,
                      "https://www.google.com/imgres?imgurl=https%3A%2F%2Fichef.bbci.co.uk%2Fnews%2F999%2Fcpsprodpb%2F15951%2Fproduction%2F_117310488_16.jpg&imgrefurl=https%3A%2F%2Fwww.bbc.co.uk%2Fnews%2Fin-pictures-56211135&tbnid=Hc5jHkS6Vw5sZM&vet=12ahUKEwiZiJel-5r8AhWDi9gFHfvNDg0QMygIegUIARDcAQ..i&docid=aPImLvUOjpk0SM&w=999&h=749&q=picture&ved=2ahUKEwiZiJel-5r8AhWDi9gFHfvNDg0QMygIegUIARDcAQ"),
                ],
              ),
            ),
          ],
        ));
  }
}
