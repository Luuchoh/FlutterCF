import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCheckbox extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyCheckboxState();
}

class MyCheckboxState extends State<MyCheckbox> {

  String currentValue = '';
  List<String> courses = ['Flutter', "Dart", "PHP", "Android", "IOS"];
  List<bool> isCheck = [];


  @override
  void initState() {
    this.isCheck = List<bool>.filled(courses.length, false);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(this.isCheck.toString()),
        ListView.builder(
          shrinkWrap: true,
          itemCount: courses.length,
          itemBuilder: (context, index) {
            return CheckboxListTile(
                title: Text(courses[index]),
                value: this.isCheck[index],
                onChanged: (value) {
                  setState(() {
                    this.isCheck[index] = value as bool;
                  });
                }
            );
          }
        )
      ],
    );

  }

  onChanged (value) {
    setState(() {
      this.currentValue = value.toString();
    });
  }

}
