import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'SharedPreferences', home: SharedPreferenceExample());
  }
}

class SharedPreferenceExample extends StatefulWidget {
  const SharedPreferenceExample({Key? key}) : super(key: key);

  @override
  State<SharedPreferenceExample> createState() =>
      _SharedPreferenceExampleState();
}

class _SharedPreferenceExampleState extends State<SharedPreferenceExample> {
  var _nameController = TextEditingController();
  var _emailController = TextEditingController();
  var _ageController = TextEditingController();

  var result = '';

  saveRecord({required String name, required String email, required int age}) async {
    final pref = await SharedPreferences.getInstance();
    await pref.setString('_name', name);
    await pref.setString('_email', email);
    await pref.setInt('_age', age);

    setState(() {
      print('data saved');
      _ageController.text = '';
      _nameController.text = '';
      _emailController.text = '';
    });

  }

  readRecord() async {
    final prefs = await SharedPreferences.getInstance();
    // Try reading data from the counter key. If it doesn't exist, return 0.
    final name = prefs.getString('_name') ?? '';
    final email = prefs.getString('_email') ?? '';
    final age = prefs.getInt('_age') ?? 0;

    setState(() {
      result = '''
      name : $name
      email : $email
      age : $age
      ''';
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shared Preference'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(hintText: 'Enter name'),
              keyboardType: TextInputType.name,
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(hintText: 'Enter email'),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: _ageController,
              decoration: InputDecoration(hintText: 'Enter age'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    readRecord();
                  },
                  child: Text('Read'),
                ),
                ElevatedButton(
                  onPressed: () {
                    saveRecord(
                        name: _nameController.text,
                        email: _emailController.text,
                        age: int.parse(_ageController.text));
                  },
                  child: Text('Save'),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              result,
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
