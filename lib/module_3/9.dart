//Write a code to display edit, view, delete options with context menu in listview and also perform
// respective operation on user's choice

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldkey = new GlobalKey<ScaffoldState>();
  final List<String> _names = [
    'Liam', 'Noah', 'Oliver', 'William', 'Elijah',
    'James', 'Benjamin', 'Lucas', 'Mason', 'Ethan', 'Alexander'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       key: _scaffoldkey,
      appBar: AppBar(
        title: Text('Pop Menu with List'),
      ),
      body: ListView.builder(
        itemBuilder: (_, i) {
          String name = _names[i];
          return ListTile(
            title: Text('$name'),
            trailing: PopupMenuButton(
              icon: Icon(Icons.more_vert),
              itemBuilder: (context) {
                return [
                  PopupMenuItem(
                    value: 'edit',
                    child: Text('Edit'),
                  ),
                  PopupMenuItem(
                    value: 'delete',
                    child: Text('Delete'),
                  )
                ];
              },
              onSelected: (String value) => actionPopUpItemSelected(value, name),
            ),
          );
        },
        itemCount: _names.length,
      ),
    );
  }

  void actionPopUpItemSelected(String value, String name) {
     _scaffoldkey.currentState?.hideCurrentSnackBar();
    String message;
    if (value == 'edit') {
      message = 'You selected edit for $name';
    } else if (value == 'delete') {
      message = 'You selcted delete for $name';
    } else {
      message = 'Not implemented';
    }
    final snackBar = SnackBar(content: Text(message));
     _scaffoldkey.currentState?.showSnackBar(snackBar);
  }
}

