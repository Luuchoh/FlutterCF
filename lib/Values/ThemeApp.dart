import 'package:flutter/material.dart';
import 'package:hello_world/Values/ColorsApp.dart';
import 'package:hello_world/Values/TextStyleApp.dart';


TextTheme get textTheme => TextTheme(
  subtitle1: subtitle1,
  bodyText1: bodyText1,
  bodyText2: bodyText2,
  headline3: headLine3,
  headline4: headLine4,
  caption: caption,
);

TextTheme get textThemeDark => TextTheme(
  subtitle1: subtitleDark1,
  bodyText1: bodyTextDark1,
  bodyText2: bodyTextDark2,
  headline3: headLineDark3,
  headline4: headLineDark4,
  caption: captionDark,
);

IconThemeData get iconThemeData1 => IconThemeData(
  color: iconColor1
);
IconThemeData get iconThemeData2 => iconThemeData1.copyWith(
  color: iconColor2
);

IconThemeData get iconThemeDark => iconThemeData1.copyWith(
    color: iconDark
);
