import 'package:flutter/material.dart';

class MyRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
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
      ),
    );
  }

}