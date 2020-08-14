import 'package:flutter/material.dart';

import '../constants.dart';

class PasswordField extends StatelessWidget {
  final hintText;
  final icon;

  const PasswordField({
    Key key,
    this.hintText,
    this.icon
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        obscureText: true,
        autofocus: false,
        style: TextStyle(color: Color(0xFF0B2775)),
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF0B2775), width: 1.0),
            borderRadius: BorderRadius.circular(10.0),
          ),
          hintText: hintText,
          hintStyle: HintTextStyle,
          prefixIcon: icon,
        ));
  }
}