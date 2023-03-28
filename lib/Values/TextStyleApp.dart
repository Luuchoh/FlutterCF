import 'package:flutter/rendering.dart';
import 'package:hello_world/Values/ColorsApp.dart';
import 'package:hello_world/Values/DimensionApp.dart';


TextStyle get textBase => TextStyle(
  color: textColor1,
  fontFamily: 'Teko'
);

TextStyle get subtitle1 => textBase.copyWith(
  fontWeight: FontWeight.w400,
  fontSize: subtitle1SP
);
TextStyle get subtitleDark1 => subtitle1.copyWith(
  color: textDark
);


TextStyle get bodyText1 => textBase.copyWith(
  // fontSize:
);
TextStyle get bodyTextDark1 => bodyText1.copyWith(
  color: textDark
);


TextStyle get bodyText2 => textBase.copyWith(
  // fontSize:
  fontWeight: FontWeight.bold,
  color: textColor2
);
TextStyle get bodyTextDark2 => bodyText2.copyWith(
    color: textDark
);


TextStyle get headLine3 => textBase.copyWith(
  // fontSize:
);
TextStyle get headLineDark3 => headLine3.copyWith(
    color: textDark
);


TextStyle get headLine4 => textBase.copyWith(
  // fontSize:
);
TextStyle get headLineDark4 => headLine4.copyWith(
    color: textDark
);


TextStyle get caption => textBase.copyWith(
  // fontSize:
);
TextStyle get captionDark => caption.copyWith(
    color: textDark
);
