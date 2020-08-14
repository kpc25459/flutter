import 'package:flutter/material.dart';
import 'package:flutter_app_login/constants.dart';
import 'package:flutter_app_login/sign_in.dart';
import 'package:flutter_app_login/widgets/email_widget.dart';

class PasswordReminder extends StatefulWidget {
  @override
  _PasswordReminderState createState() {
    return _PasswordReminderState();
  }
}

class _PasswordReminderState extends State<PasswordReminder> {
  @override
  Widget build(BuildContext context) {
    final email = EmailWidget(hintText: 'kot');

    final reminderButton = Container(
        height: 45.0,
        width: double.infinity,
        child: RaisedButton(
            elevation: 5.0,
            onPressed: () {
              Route route = MaterialPageRoute(builder: (context) => LoginScreen());
              Navigator.push(context, route);
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            color: Color(0xFFC49102),
            child: Text(
              'SEND',
              style: LoginTextButton,
            )));

    final body = Container(
      padding: EdgeInsets.only(left: 20.0, right: 20.0),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 120.0,
          ),
          email,
          SizedBox(
            height: 50,
          ),
          reminderButton
        ],
      ),
    );

    return Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Color(0xFF82A0F4),
        body: SingleChildScrollView(
          child: body,
        ));
  }
}