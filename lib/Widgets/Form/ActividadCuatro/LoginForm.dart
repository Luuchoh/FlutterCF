import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LoginFormState();
}

class LoginFormState extends State<LoginForm> {

  GlobalKey<FormState> formKey = GlobalKey();
  TextEditingController emailCtrl = TextEditingController();
  TextEditingController passwordCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return
      Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(30),
          child:  Form(
            key: formKey,
            child: Column(
              children: [
                Text(
                  'Codigo Facilito',
                  style: TextStyle(
                      letterSpacing: 8,
                      color: Colors.blueGrey,
                      fontSize: 40,
                      fontFamily: 'Teko'
                  ),
                ),
                Stack(
                  children: [
                    Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Icon(
                          Icons.my_library_music,
                          color: Colors.pink[100],
                          size: 170,
                        )),
                    Icon(
                      Icons.library_music_outlined,
                      color: Colors.blueGrey,
                      size: 170,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: TextFormField(
                    controller: emailCtrl,
                    decoration: decoration("Correo", Icons.email_outlined),
                    validator: (value) => validateEmail(value),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: TextFormField(
                    controller: passwordCtrl,
                    decoration: decoration("Contraseña", Icons.lock_outline),
                    validator: (value) => validateEmail(value),
                    keyboardType: TextInputType.emailAddress,
                    obscureText: true,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: RichText(
                        text: const TextSpan(
                          text: '¿Olvidaste tu contraseña?',
                          style: TextStyle(
                              color: Colors.black
                          ),
                          children: [
                            TextSpan(
                              text: 'Recuperarla',
                              style: TextStyle(
                                color: Colors.pink,
                              ),
                            ),
                          ],
                        ),
                    ),
                  ),
                ),

                SizedBox(
                  width: double.infinity,
                  height: 40,
                  child: OutlinedButton(
                    onPressed: () => save(),
                    child: Text('Guardar'),
                    style: OutlinedButton.styleFrom(
                        elevation: 4,
                        backgroundColor: Colors.pink[100],
                        foregroundColor: Colors.blueGrey,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                                Radius.circular(30)
                            )
                        )
                    ),
                  )
                ),
              ],
            ),
          ),
        ),
      );
  }

  save () {
    if (formKey.currentState!.validate()) {
      print('Correo ${emailCtrl.text}');
      print('Contraseña ${passwordCtrl.text}');
      formKey.currentState!.reset();
    }
  }

  validateEmail (String? value) {
    String pattern = r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
    RegExp regExp = new RegExp(pattern);
    if (value?.length == 0) {
      return 'El correo es necesario';
    }
    if (!regExp.hasMatch(value.toString())) {
      return 'Correo invalido';
    }
    return null;
  }


  validatePassword (String? value) {
    if (value?.length == 0) {
      return 'Contraseña necesaria';
    }
    return null;
  }

  decoration (String text, IconData icon) {
    return InputDecoration(
        labelText: text,
        prefixIcon: Icon(
          icon,
          color: Colors.pink[100],
        ),
        labelStyle: TextStyle(color: Colors.blueGrey),
        enabledBorder: OutlineInputBorder(
            borderSide:
            BorderSide(color: Colors.pink.withOpacity(0.3), width: 1)),
        focusedBorder: OutlineInputBorder(
            borderSide:
            BorderSide(color: Colors.pink.withOpacity(0.3), width: 1)));
  }
}
