import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_world/Common/MyKeys.dart';
import 'package:hello_world/Common/MyRoutes.dart';
import 'package:hello_world/Model/Sound.dart';
import 'package:hello_world/Pages/NowPlayingPage.dart';
import 'package:hello_world/Widgets/ListViewAndGridView/ActividadTres/PlayListView.dart';
import 'package:hello_world/Widgets/ListViewAndGridView/Items/MyCard.dart';
import 'package:hello_world/Widgets/ListViewAndGridView/Items/MyContainer.dart';
import 'package:hello_world/Widgets/ListViewAndGridView/Items/MyListTile.dart';
import 'package:hello_world/Widgets/ListViewAndGridView/MyGridView.dart';
import 'package:hello_world/Widgets/ListViewAndGridView/MyListView.dart';

class PlaylistPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PlaylistPageState();
}

class PlaylistPageState extends State<PlaylistPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => playListViewKey.currentState?.add(Sound(title: 'Sweet Child O´Mine', author: 'Guns and Roses' )),
        child: Icon(
          Icons.add
        ),
      ),
      body: SafeArea(
        child:
          PlayListView()
        // MyListView()
        // MyGridView()
        // MyListTile()
        // MyCard()
        // MyContainer()
        // ElevatedButton(
        //   child: Text('Now Playing Page'),
        //   onPressed: () => {
        //     Navigator.popAndPushNamed(context, ROUTE_NOW_PLAYING)
        //     // Navigator.pop(context)
        //     // Navigator.push(context, MaterialPageRoute(builder: (context) => NowPlayingPage()))
        //   },
        // ),
      ),
    );
  }


}