import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return myOutlinedButton();
  }

  myElevateButton () {
    return ElevatedButton.icon(
      label: Text('Guardar'),
      icon: Icon(Icons.save_alt_outlined, color: Colors.red,),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        shadowColor: Colors.blue,
        elevation: 20,
      ),
        onLongPress: () {
          print('Elevation onlong Button');
        },
        onPressed: () {
          print('Elevation Button');
        },
    );
  }

  myTextButton() {
    return TextButton(
        onPressed: () {
          print('Nuestro textButton');
        },
        child: Text('Guardar')
    );
  }

  myOutlinedButton () {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        side: BorderSide(color: Colors.white, width: 5),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15))
        )
      ),
        onPressed: () {
          print('Nuestro Outloned');
        },
        child: Text('Guardar')
    );
  }

}