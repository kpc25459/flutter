import 'package:flutter/material.dart';

import '../constants.dart';

class EmailField extends StatelessWidget {
  final hintText;
  final textEditingController;

  const EmailField({
    Key key,
    this.hintText,
    this.textEditingController
  }) : super(key: key);

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
        controller: textEditingController,
        keyboardType: TextInputType.emailAddress,
        style: TextStyle(
          color: Color(0xFF0B2775),
        ),
        autofocus: false,
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(top: 14.0),
//          enabledBorder: OutlineInputBorder(
//            borderSide: BorderSide(color: Color(0xFF0B2775), width: 1.0),
//            borderRadius: BorderRadius.circular(10.0),
//          ),
          hintText: hintText,
          hintStyle: HintTextStyle,
          prefixIcon: Icon(
            Icons.email,
            color: Colors.white,
          ),
        ),
      )
    );
  }
}
