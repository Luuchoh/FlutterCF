import 'package:flutter/material.dart';
import 'package:hello_world/Common/MyKeys.dart';
import 'package:hello_world/Model/Sound.dart';
import 'package:hello_world/Widgets/ListViewAndGridView/Items/MyCard.dart';
import 'package:hello_world/Widgets/ListViewAndGridView/Items/MyListTile.dart';

class MyListView extends StatefulWidget {

  MyListView():super(key: myListViewKey);

  @override
  State<StatefulWidget> createState() => MyListViewState();
}

class MyListViewState extends State<MyListView> {
  List<Sound> mySounds = [];

  @override
  void initState() {
    this.mySounds = sounds;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurple ,
      child: ListView.builder(
        // scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        reverse: true,
        // physics: NeverScrollableScrollPhysics(),
        itemCount: sounds.length,
        itemBuilder: (context, index) {
          Sound sound = this.mySounds[index];
          return Dismissible(
            direction: DismissDirection.endToStart,
              key: ObjectKey(sound),
              child: MyListTile(sound, index, remove),
            onDismissed: (direccion) {
              remove(sound);
            },
          );
        }
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