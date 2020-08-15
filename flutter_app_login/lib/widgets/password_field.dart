import 'package:flutter/material.dart';

import '../constants.dart';

class PasswordField extends StatelessWidget {
  final hintText;
  final icon;

  const PasswordField({Key key, this.hintText, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: Color(0xFF9EA7BF),
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 6.0,
              offset: Offset(0, 2),
            ),
          ],
        ),
        height: 60.0,
        child: TextFormField(
          obscureText: true,
          autofocus: false,
          style: TextStyle(color: Color(0xFF0B2775)),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 14.0),
            hintText: hintText,
            hintStyle: HintTextStyle,
            prefixIcon: icon,
          ),
        ));
  }
}
