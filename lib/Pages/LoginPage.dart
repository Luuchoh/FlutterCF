import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_world/Common/HomeArguments.dart';
import 'package:hello_world/Common/MyRoutes.dart';
import 'package:hello_world/Pages/MyHomePage.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginPageState();


}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ElevatedButton(
          child: Text('My Home Page'),
          onPressed: () => {
            Navigator.pushNamed(context, ROUTE_HOME, arguments: HomeArguments("Inicio", "Hola Mundo"))
            // Navigator.pop(context)
            // Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage()))
          },
        ),
      ),
    );
  }


}