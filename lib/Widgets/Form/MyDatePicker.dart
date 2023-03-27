import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDatePicker extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyDatePickerState();
}

class MyDatePickerState extends State<MyDatePicker> {

  DateTime? selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => selectDate(),
      child: Text(selectedDate.toString())
    );
  }

  selectDate() async {
    DateTime? dateTime = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2023),
      lastDate: DateTime(2024)
    );
    if (selectedDate != null && selectedDate != dateTime) {
      setState(() {
        this.selectedDate = dateTime;
      });
    }
  }


}
