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
        child: PopupMenuButton (
          icon: IconTheme(
            data: Theme.of(context).accentIconTheme,
            child: Icon(
              Icons.more_vert,
            ),
          ),
          itemBuilder: (context) => [
            PopupMenuItem(value: 1, child: Text('Eliminar')),
            PopupMenuItem(value: 2, child: Text('Otro')),
          ],
        )

      ),
      leading: IconTheme(
        data: Theme.of(context).primaryIconTheme,
        child: Icon(
          Icons.play_circle_fill_rounded,
        ),
      ),
      // onTap: () => playListViewKey.currentState?.update(sound..title = 'November Rain', index),
      onLongPress: () {print('Long ListTile');},
    );
  }

}