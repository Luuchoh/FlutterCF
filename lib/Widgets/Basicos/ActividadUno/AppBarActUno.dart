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
      // leading: Icon(Icons.star_border_outlined, color: Colors.white),
      actions: [
        Icon(Icons.search, color: Colors.white),
        // Icon(Icons.more_vert, color: Colors.white)
        PopupMenuButton(
          color: Colors.deepPurple,
          elevation: 30,
          shape: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
              width: 6
            )
          ),
          icon: Icon(Icons.more_vert),
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 1,
                child: Text('Compartir', style: TextStyle(color: Colors.white),)
              ),
              PopupMenuItem(
                value: 1,
                child: Text('Obtener link', style: TextStyle(color: Colors.white),)
              ),
            ]
        )
      ],
      toolbarHeight: 100,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(150);

}