import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_world/Common/HomeArguments.dart';
import 'package:hello_world/Common/MyRoutes.dart';
import 'package:hello_world/Widgets/Form/MyCheckbox.dart';
import 'package:hello_world/Widgets/Form/MyDatePicker.dart';
import 'package:hello_world/Widgets/Form/MyDropdownButton.dart';
import 'package:hello_world/Widgets/Form/MyForm.dart';
import 'package:hello_world/Widgets/Form/MyRadio.dart';
import 'package:hello_world/Widgets/Form/MySwitch.dart';
import 'package:hello_world/Widgets/Form/MyTextField.dart';
import 'package:hello_world/Pages/MyHomePage.dart';

import '../Widgets/Form/ActividadCuatro/LoginForm.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:
        LoginForm()
        // MyForm()
        // MyTextField()
        // MySwitch()
        // MyDropdownButton()
        // MyDatePicker()
        // MyCheckbox()
        // MyRadio()
        // ElevatedButton(
        //   child: Text('My Home Page'),
        //   onPressed: () => {
        //     Navigator.pushNamed(context, ROUTE_HOME, arguments: HomeArguments("Inicio", "Hola Mundo"))
        //     // Navigator.pop(context)
        //     // Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage()))
        //   },
        // ),
      ),
    );
  }


}