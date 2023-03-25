import 'package:flutter/material.dart';
import 'package:hello_world/Common/MyKeys.dart';
import 'package:hello_world/Model/Sound.dart';

class SoundListTile extends StatelessWidget {

  Sound sound;
  int index;

  SoundListTile(this.sound, this.index);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(sound.title),
      subtitle: Text(sound.author),
      trailing: InkWell(
        // onTap: () => playListViewKey.currentState?.remove(sound),
        child: Icon(
          Icons.more_vert,
        ),
      ),
      leading: Icon(
        Icons.play_circle_fill_rounded,
        color: Colors.pink[100],
      ),
      // onTap: () => playListViewKey.currentState?.update(sound..title = 'November Rain', index),
      onLongPress: () {print('Long ListTile');},
    );
  }

}