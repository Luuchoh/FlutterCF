import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('Inicio'),
      backgroundColor: Colors.redAccent,
      elevation: 0,
      shadowColor: Colors.white,
      centerTitle: true,
      toolbarOpacity: 0.8,
      leading: Icon(Icons.arrow_back, color: Colors.white),
      actions: [
        Icon(Icons.search, color: Colors.white),
        Icon(Icons.more_vert, color: Colors.white)
      ],
      toolbarHeight: 100,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

}