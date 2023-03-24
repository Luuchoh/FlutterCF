import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      "Hola Fluttersiño, bienvenido a CódigoFacilito",
      style: TextStyle(
        color: Colors.white,
        fontSize: 30,
        fontWeight: FontWeight.bold,
        letterSpacing: 5,
        wordSpacing: 20,
        backgroundColor: Colors.black26,
        fontFamily: "Montserrat",
        decoration: TextDecoration.underline,
      ),
      textAlign: TextAlign.center,
      softWrap: true, // WRAP salto de linea
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }

}