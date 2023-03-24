import 'package:flutter/material.dart';

class MyFloatingActionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
        onPressed: () {
          print('Floating Action Button');
        },
      icon: Icon(Icons.add, size: 30),
      label: Text('Agregar usuario'),
      backgroundColor: Colors.grey,
      elevation: 10,
      tooltip: 'Agregar Usuario',
    );
  }

}