import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_world/Common/MyRoutes.dart';
import 'package:hello_world/Pages/NowPlayingPage.dart';

class PlaylistPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _PlaylistPageState();


}

class _PlaylistPageState extends State<PlaylistPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ElevatedButton(
          child: Text('Now Playing Page'),
          onPressed: () => {
            Navigator.popAndPushNamed(context, ROUTE_NOW_PLAYING)
            // Navigator.pop(context)
            // Navigator.push(context, MaterialPageRoute(builder: (context) => NowPlayingPage()))
          },
        ),
      ),
    );
  }


}