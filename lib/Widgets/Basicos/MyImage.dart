import 'package:flutter/material.dart';

class MyImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image(
      image: NetworkImage('https://i.ibb.co/61ntk1d/spongebob-technology.gif'),
      width: 300,
      height: 300,
      fit: BoxFit.fill,
      // color: Colors.white,
      errorBuilder: (
          BuildContext context,
          Object error,
          StackTrace? stackTrace,
      ) {
        return Image(image: AssetImage('assets/images/dead.jpg'));
      },
    );
  }

}