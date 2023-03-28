import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyTextFieldState();
}

class MyTextFieldState extends State<MyTextField> {

  TextEditingController ctrlName = TextEditingController();
  TextEditingController ctrlAge = TextEditingController();
  String name = '';
  FocusNode node1 = FocusNode();
  FocusNode node2 = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(name),
        TextField(
          controller: ctrlAge,
          keyboardType: TextInputType.phone,
          autofocus: true,
          focusNode: node1,
        ),
        TextField(
          controller: ctrlName,
          keyboardType: TextInputType.text,
          autofocus: true,
          focusNode: node2,
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.deepPurple),
          maxLength: 5,
          // maxLines: 3,
          obscureText: true,
          decoration: InputDecoration(
            hintText: 'Edad',
            hintStyle: TextStyle(color: Colors.deepPurple),
            labelText: 'Edad',
            icon: Icon(Icons.search),
            prefix: Icon(Icons.favorite),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.deepPurple,
                width: 8
              ),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.blueAccent,
                  width: 8
              ),
            ),
            disabledBorder:  OutlineInputBorder(
              borderSide: const BorderSide(
                  color: Colors.blueAccent,
                  width: 8
              ),
              borderRadius: BorderRadius.circular(18)
            ),
            enabled: false,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            FocusScope.of(context).requestFocus(node2);
            setState(() {
              this.name = ctrlName.text.toString();
            });
          },
          child: Text('Guardar')
        )
      ],
    );
  }
}
