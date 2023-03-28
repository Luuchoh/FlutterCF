import 'package:flutter/material.dart';
import 'package:hello_world/Common/MyRoutes.dart';
import 'package:hello_world/Pages/PlaylistPage.dart';

class FloatingActionButtonActUno extends StatelessWidget {

  VoidCallback voidCallback;

  FloatingActionButtonActUno(this.voidCallback);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        onPressed: () {
          return voidCallback();
          // Navigator.pushNamedAndRemoveUntil(context, ROUTE_PLAY_LIST, (Route<dynamic> route) => false);
          // Navigator.pop(context);
          //Navigator.push(context, MaterialPageRoute(builder: (context) => PlaylistPage()));
        },
      child: Icon(Icons.add, size: 30),
      backgroundColor: Colors.grey,
      elevation: 10,
      tooltip: 'Agregar Usuario',
    );
  }

}