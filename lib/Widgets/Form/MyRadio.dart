import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyRadio extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyRadioState();
}

class MyRadioState extends State<MyRadio> {

  String currentValue = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RadioListTile(title: Text('Soltero'), value: "radio1", groupValue: currentValue, onChanged: (value) => onChanged(value)),
        RadioListTile(title: Text('Soltero'), value: "radio2", groupValue: currentValue, onChanged: (value) => onChanged(value)),
        Text(currentValue)
      ],
    );
  }

  onChanged (value) {
    setState(() {
      this.currentValue = value.toString();
    });
  }

}
