import 'package:flutter/material.dart';
import 'package:flutter_app_login/constants.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() {
    return _SignupScreenState();
  }
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Sign up'),
      color: Colors.blue,
      padding: EdgeInsets.all(20.0),
      margin: EdgeInsets.all(20.0),
    );
  }
}
