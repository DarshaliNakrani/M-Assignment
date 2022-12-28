// 7. What are different menus in android. Explain each with example

//import 'package:assignment_flutter/module3/model/GetLinkPage.dart';
//import 'package:assignment_flutter/module3/model/SettingsPage.dart';
//import 'package:assignment_flutter/module3/model/SharePage.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: mainpage(),
    );
  }
}

class mainpage extends StatelessWidget {
  const mainpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings Menu'),
        actions: [
          PopupMenuButton(
            // color: Colors.grey,
            onSelected: (item) => onSelected(context, item),
            itemBuilder: (context) => [
              PopupMenuItem(value: 0,
                child: Row(
                  children: [
                    Icon(Icons.settings, color: Colors.black),
                    SizedBox(width: 12,),
                    Text('Setting'),
                  ],
                ),),
              PopupMenuItem(
                value: 1,
                child: Row(
                  children: [
                    Icon(Icons.share, color: Colors.black),
                    SizedBox(width: 12,),
                    Text('Share'),
                  ],
                ),
              ),
              PopupMenuItem(value: 2,
                child: Row(
                  children: [
                    Icon(Icons.phonelink, color: Colors.black),
                    SizedBox(width: 12,),
                    Text('Get Link'),
                  ],
                ),
                  ),
            ],
          ),
        ],
      ),
    );
  }

  onSelected(BuildContext context, Object? item) {
    switch (item) {
      case 0:
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => SettingsPage()),
        );
        break;
      case 1:
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => Sharepage()),
        );
        break;
      case 2:
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => GetLinkPage()),
        );
        break;
    }
  }
}
