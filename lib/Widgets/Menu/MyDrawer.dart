import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture:
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/dead.jpg'),
                ),
              accountName: Text('Luis Hernández'),
              accountEmail: Text('Luis.Hernández@gmail.com')
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Inicio'),
            ),
            ListTile(
              leading: Icon(Icons.playlist_play_outlined),
              title: Text('Inicio'),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Inicio'),
            ),
            Divider(
              height: 8,
              color: Colors.black,
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Cerrar sesion'),
            ),
          ],
        )
    );
  }

}