import 'package:flutter/material.dart';

typedef VoidCallback(int index);
class MyBottomNavigatorBar extends StatelessWidget {

  VoidCallback voidCallback;
  int currentIndex;
  MyBottomNavigatorBar(this.voidCallback, this.currentIndex);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: voidCallback,
      selectedItemColor: Colors.redAccent,
      unselectedItemColor: Colors.deepPurple,
      iconSize: 25,
      selectedLabelStyle: TextStyle(
        fontSize: 15
      ),
      unselectedLabelStyle: TextStyle(
        fontSize: 12
      ),
      backgroundColor: Colors.orangeAccent,
      currentIndex: currentIndex,
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
          label: 'Inicio',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Perfil',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Configuración',
        ),
      ],
    );
  }

}