import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyFormState();
}

class MyFormState extends State<MyForm> {

  GlobalKey<FormState> formKey = GlobalKey();
  TextEditingController nameCtrl = TextEditingController();
  TextEditingController emailCtrl = TextEditingController();
  TextEditingController mobileCtrl = TextEditingController();
  TextEditingController passwordCtrl = TextEditingController();
  TextEditingController repeatPasswordCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          TextFormField(
            controller: nameCtrl,
            decoration: InputDecoration(
              labelText: 'Nombre'
            ),
            validator: (value) => validateName(value),
          ),
          TextFormField(
            controller: emailCtrl,
            decoration: InputDecoration(
                labelText: 'Correo'
            ),
            validator: (value) => validateEmail(value),
            keyboardType: TextInputType.emailAddress,
          ),
          TextFormField(
            controller: mobileCtrl,
            decoration: InputDecoration(
                labelText: 'Celular'
            ),
            validator: (value) => validateMobile(value),
            keyboardType: TextInputType.phone,
          ),
          TextFormField(
            controller: passwordCtrl,
            decoration: InputDecoration(
                labelText: 'Contraseña'
            ),
            obscureText: true,
          ),
          TextFormField(
            controller: repeatPasswordCtrl,
            decoration: InputDecoration(
                labelText: 'Repetir Contraseña'
            ),
            validator: (value) => validatePassword(value),
            obscureText: true,
          ),
          ElevatedButton(
            onPressed: () => save(),
            child: Text('Guardar'))
        ],
      ),
    );
  }

  save () {
    if (formKey.currentState!.validate()) {
      print('Nombre ${nameCtrl.text}');
      print('Correo ${emailCtrl.text}');
      print('Celular ${mobileCtrl.text}');
      print('Contraseña ${passwordCtrl.text}');
      formKey.currentState!.reset();
    }
  }

  validateName (String? value) {
    if (value?.length == 0) {
      return 'El nombre es necesario';
    }
    return null;
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

  validateMobile (String? value) {
    if (value?.length == 0) {
      return 'El correo es necesario';
    }
    if (value?.length != 10) {
      return 'Número de celular invalido';
    }
    return null;
  }

  validatePassword (String? value) {
    if (value?.length == 0) {
      return 'Contraseña necesaria';
    }
    if (value != passwordCtrl.text.toString()) {
      return 'Las contraseñas no coinciden';
    }
    return null;
  }
}
