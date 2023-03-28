import 'package:flutter/material.dart';
import 'package:hello_world/Values/DimensionApp.dart';

class CoverContainer extends StatelessWidget {

  String image;

  CoverContainer(this.image);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {print('on double tap');},
      child: Container(
        width: coverWidth,
        margin: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(this.image)
          ),
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black38,
              offset: Offset(4, 5)
            )
          ]
        ),
      ),
    );
  }

}