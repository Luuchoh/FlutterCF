import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_world/Common/MyRoutes.dart';
import 'package:hello_world/Pages/MyHomePage.dart';
import 'package:hello_world/Widgets/MultiChild/ActividadDos/PlayingNow.dart';
import 'package:hello_world/Widgets/MultiChild/MyColumn.dart';
import 'package:hello_world/Widgets/MultiChild/MyRow.dart';
import 'package:hello_world/Widgets/MultiChild/MyStack.dart';
import 'package:hello_world/Widgets/MultiChild/MyWrap.dart';

class NowPlayingPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => NowPlayingPageState();


}

class NowPlayingPageState extends State<NowPlayingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PlayingNow()
        // MyStack()
        // MyWrap()
        // MyRow()
        // MyColumn()
        // ElevatedButton(
        //   child: Text('My Home Page'),
        //   onPressed: () => {
        //     Navigator.popAndPushNamed(context, ROUTE_HOME)
        //     // Navigator.pop(context)
        //     //Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage()))
        //   },
        // ),
      ),
    );
  }


}