import 'package:flutter/material.dart';

class MyStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerRight,
      fit: StackFit.expand,
      children: [
        Image.asset('assets/images/dead.jpg'),
        Positioned(
            right: 10,
            child: Icon(Icons.close_outlined, size: 40,)
        ),
      ],
    );
  }

}