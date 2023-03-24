import 'package:flutter/material.dart';
import 'package:hello_world/Widgets/Basicos/ActividadUno/AppBarActUno.dart';
import 'package:hello_world/Widgets/Basicos/ActividadUno/FloatingActionButtonActUno.dart';
import 'package:hello_world/Widgets/Basicos/ActividadUno/ImageActUno.dart';
import 'package:hello_world/Widgets/Basicos/MyAppBar.dart';
import 'package:hello_world/Widgets/Basicos/MyButton.dart';
import 'package:hello_world/Widgets/Basicos/MyFloatingActionButton.dart';
import 'package:hello_world/Widgets/Basicos/MyIcon.dart';
import 'package:hello_world/Widgets/Basicos/MyImage.dart';
import 'package:hello_world/Widgets/Basicos/MyText.dart';
import 'package:hello_world/Widgets/Basicos/MyTextRich.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButtonActUno(),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      appBar: AppBarActUno('UNO'),
      body: SafeArea(
        child: Center(
          child: ImageActUno(),
          // MyButton()
          // MyText(),
          // MyTextRich(),
          // MyIcon(),
          // MyImage(),
        ),
      ),
    );
  }
}