import 'package:flutter/material.dart';

import '../constants.dart';

class EmailField extends StatelessWidget {
  final hintText;

  const EmailField({
    Key key,
    this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      style: TextStyle(
        color: Color(0xFF0B2775),
      ),
      autofocus: false,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFF0B2775), width: 1.0),
          borderRadius: BorderRadius.circular(10.0),
        ),
        hintText: hintText,
        hintStyle: HintTextStyle,
        prefixIcon: Icon(
          Icons.email,
          color: Color(0xFF0B2775),
        ),
      ),
    );
  }
}
