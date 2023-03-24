import 'package:flutter/material.dart';

class MyTextRich extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(text:
      TextSpan(
        text: '¿Tienes una cuenta?',
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
        ),
        children: [
          TextSpan(
            text: 'Inicia Sesión',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
              fontSize: 20,
            )
          )
        ]
      )
    );
  }
  
}