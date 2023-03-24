import 'package:flutter/material.dart';

class AppBarActUno extends StatelessWidget implements PreferredSizeWidget {
  String title;
  AppBarActUno(this.title);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(this.title),
      backgroundColor: Colors.redAccent,
      elevation: 0,
      shadowColor: Colors.white,
      centerTitle: true,
      toolbarOpacity: 0.8,
      leading: Icon(Icons.star_border_outlined, color: Colors.white),
      actions: [
        Icon(Icons.search, color: Colors.white),
        Icon(Icons.more_vert, color: Colors.white)
      ],
      toolbarHeight: 100,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(150);

}