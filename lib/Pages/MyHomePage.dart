import 'package:flutter/material.dart';
import 'package:hello_world/Common/HomeArguments.dart';
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
import 'package:hello_world/Widgets/Menu/Fragments/MyHome.dart';
import 'package:hello_world/Widgets/Menu/Fragments/MyProfile.dart';
import 'package:hello_world/Widgets/Menu/Fragments/MySetting.dart';
import 'package:hello_world/Widgets/Menu/MyBottomNavigatorBar.dart';

import '../Widgets/Menu/MyDrawer.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {

  List fragments = [
    MyHome(),
    MyProfile(),
    MySetting(),
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    // HomeArguments homeArguments = ModalRoute.of(context)!.settings.arguments as HomeArguments;
    return Scaffold(
      drawer: MyDrawer(),
      bottomNavigationBar: MyBottomNavigatorBar(onTab, currentIndex),
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButtonActUno(buttonSheet),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      appBar: AppBarActUno(""),
      body: fragments[currentIndex]
      // SafeArea(
      //   child: Center(
      //     child: ImageActUno(),
          // MyButton()
          // MyText(),
          // MyTextRich(),
          // MyIcon(),
          // MyImage(),
      //   ),
      // ),
    );
  }

  buttonSheet () {
    showModalBottomSheet(
      context: context,
      builder: (builder) {
        return Column(
          children: [
            ListTile(
              leading: Icon(Icons.share),
              title: Text('Compartir'),
            ),
            ListTile(
              leading: Icon(Icons.link),
              title: Text('Copiar link'),
            ),
            ListTile(
              leading: Icon(Icons.send),
              title: Text('Enviar'),
            ),
          ],
        );
      }
    );
  }

  onTab (int index) {
    setState(() {
      this.currentIndex = index;
    });
  }

}