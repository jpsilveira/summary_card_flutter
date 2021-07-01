import 'package:flutter/material.dart';

showAlertDialog(BuildContext context, String button) {
  Widget okButton = TextButton(
    key: Key("testButtonAlert"),
    child: Text("OK"),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  AlertDialog alert = AlertDialog(
    key: Key("testAlert"),
    title: Text("Botão $button clicado!"),
    // content: Text(""),
    actions: [
      okButton,
    ],
  );

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
