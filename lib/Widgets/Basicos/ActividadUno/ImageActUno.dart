import 'package:flutter/material.dart';

class ImageActUno extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage('assets/images/dead.jpg'),
      errorBuilder: (
          BuildContext context,
          Object error,
          StackTrace? stackTrace,
      ) {
        return Image(image: NetworkImage('https://hips.hearstapps.com/es.h-cdn.co/fotoes/images/peliculas/deadpool/deadpool-en-10-puntos-un-nuevo-super-heroe/97466017-1-esl-ES/Deadpool-en-10-puntos-Un-nuevo-super-heroe.jpg?crop=1xw:0.5xh;center,top&resize=640:*'));
      },
    );
  }

}