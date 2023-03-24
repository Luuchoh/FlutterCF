import 'package:flutter/material.dart';

class MyWrap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.spaceEvenly,
      spacing: 30,
      runSpacing: 30,
      children:[
        Column(
          children: [
            Text('ASDASDAS'),
            Text('ASDASDAS'),
            Text('ASDASDAS'),
          ],
        ),
        Text('ASDASDAS'),
        Text('ASDASDAS'),
        Text('ASDASDAS'),
        Text('ASDASDAS'),
        Text('ASDASDAS'),
        Text('ASDASDAS'),
        Text('ASDASDAS'),
        Text('ASDASDAS'),
        Text('ASDASDAS'),
      ],
    );
  }

}