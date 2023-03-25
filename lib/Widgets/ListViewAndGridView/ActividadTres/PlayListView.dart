import 'package:flutter/material.dart';
import 'package:hello_world/Common/MyKeys.dart';
import 'package:hello_world/Model/Sound.dart';
import 'package:hello_world/Widgets/ListViewAndGridView/ActividadTres/SoundListTile.dart';
import 'package:hello_world/Widgets/ListViewAndGridView/Items/MyCard.dart';
import 'package:hello_world/Widgets/ListViewAndGridView/Items/MyListTile.dart';

import 'CoverContainer.dart';

class PlayListView extends StatefulWidget {

  PlayListView():super(key: playListViewKey);

  @override
  State<StatefulWidget> createState() => PlayListViewState();
}

class PlayListViewState extends State<PlayListView> {
  List<Sound> mySounds = [];

  @override
  void initState() {
    this.mySounds = sounds;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 270,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: sounds.length,
              itemBuilder: (context, index) {
                Sound sound = this.mySounds[index];
                return CoverContainer(sound.cover);
              }),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: sounds.length,
            itemBuilder: (context, index) {
              Sound sound = this.mySounds[index];
              return SoundListTile(sound, index);
            }
          )
        ],
      ),
    );
  }

  add (Sound sound) {
    setState(() {
      mySounds.add(sound);
    });
  }

  update (Sound sound, index) {
    setState(() {
      mySounds[index] = sound;
    });
  }

  remove (Sound sound) {
    setState(() {
      mySounds.remove(sound);
    });
  }

}