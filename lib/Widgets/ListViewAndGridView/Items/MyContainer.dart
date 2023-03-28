import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {print('on Tap en Container');},
      onLongPress: () {print('on Tap en Container longpress');},
      child: Container(
        width: 200,
        height: 200,
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(vertical: 30),
        padding: EdgeInsets.only(top: 60),
        decoration: BoxDecoration(
            color: Colors.green,
            border: Border.all(
                color: Colors.black,
                width: 8
            ),
            // borderRadius: BorderRadius.circular(10),
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                  color: Colors.red,
                  offset: Offset(4, 8)
              ),
            ],
            gradient: LinearGradient(
                colors: [
                  Colors.red,
                  Colors.blue,
                ],
                begin: Alignment.topRight,
                end: Alignment.topLeft
            ),
            image: DecorationImage(
                image: AssetImage('assets/images/dead.jpg')
            )
        ),
        child: Text('Hola Mundo'),
      ),
    );
  }

}