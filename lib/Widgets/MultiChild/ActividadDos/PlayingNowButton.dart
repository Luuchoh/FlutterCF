import 'package:flutter/material.dart';

class PlayingNowButton extends StatelessWidget {

  IconData icon;
  Color? iconColor;
  Color? backGroundColor;
  var onPressed;

  PlayingNowButton(
      this.icon,
      this.onPressed,
      {
        this.iconColor = Colors.white,
        this.backGroundColor = Colors.white
      }
      );

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Icon(
        icon,
        color: iconColor,
        size: 35,
      ),
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          padding:EdgeInsets.zero ,
          backgroundColor: backGroundColor,
          shadowColor: backGroundColor
      ),
    );
  }

}