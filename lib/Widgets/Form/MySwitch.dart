import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MySwitch extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MySwitchState();
}

class MySwitchState extends State<MySwitch> {

  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      title: Text(isSwitched ? 'ON': 'OFF'),
      activeColor: Colors.white,
      activeTrackColor: Colors.deepPurple,
      value: isSwitched,
      onChanged: onChanged
    );
  }

  onChanged (value) {
    setState(() {
      this.isSwitched = value;
    });
  }

}
