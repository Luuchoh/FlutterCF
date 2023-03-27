import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDropdownButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyDropdownButtonState();
}

class MyDropdownButtonState extends State<MyDropdownButton> {

  String currentValue = '';
  List<String> courses = ['Flutter', "Dart", "PHP", "Android", "IOS"];


  @override
  void initState() {
    this.currentValue = courses[0];
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      value: currentValue,
      dropdownColor: Colors.deepPurple,
      icon: Icon(Icons.music_note),
      items: courses.map((String course) =>
        DropdownMenuItem(
          value: course,
          child: Text(course)
        )).toList(),
      onChanged: (String? value) {
        if (value != null && currentValue != value) {
          setState(() {
            this.currentValue = value;
          });
        }
      }
    );
  }
}
