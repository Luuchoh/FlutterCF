import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: () {print('on double tap');},
      onTapDown: (TapDownDetails downDetails) {print('on tap down ${downDetails.globalPosition}');},
      onTapUp: (TapUpDetails upDetails) {print('on tap up');},
      child: Card(
        elevation: 30,
        margin: EdgeInsets.all(20),
        color: Colors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
          side: BorderSide(
              color: Colors.red,
              width: 8
          ),
        ),
        shadowColor: Colors.deepPurple,
        child: Text('Hola mundo', style: TextStyle(fontSize: 40),),
      ),
    );
  }

}