import 'package:flutter/material.dart';

Color? get iconColor1 => Colors.pink[100];
Color? get iconColor2 => Colors.blueGrey;
Color? get iconDark => Colors.white;

Color? get textColor1 => Colors.blueGrey;
Color? get textColor2 => Colors.pink[100];
Color? get textDark => Colors.white;

Color get background => Colors.white;
Color get backgroundDark => Colors.black;

Color get testHex => hexToColor('#1CBA9A');
Color? get testOpa => Colors.redAccent.withOpacity(1);

Color hexToColor (String code) => Color(int.parse(code.substring(1,7), radix: 16) + 0xFF000000);