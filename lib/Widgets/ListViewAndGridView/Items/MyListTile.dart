import 'package:flutter/material.dart';
import 'package:hello_world/Common/MyKeys.dart';
import 'package:hello_world/Model/Sound.dart';

typedef VoidCallbackParam(Sound sound);

class MyListTile extends StatelessWidget {

  Sound sound;
  int index;
  VoidCallbackParam voidCallbackParam;

  MyListTile(this.sound, this.index, this.voidCallbackParam);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(sound.title),
      subtitle: Text(sound.author),
      trailing: InkWell(
        // onTap: () => voidCallbackParam(sound),
        onTap: () => myListViewKey.currentState?.remove(sound),
        child: Icon(
          Icons.close_outlined,
        ),
      ),
      leading: Icon(
        Icons.chrome_reader_mode,
      ),
      onTap: () => myListViewKey.currentState?.update(sound..title = 'November Rain', index),
      onLongPress: () {print('Long ListTile');},
    );
  }

}