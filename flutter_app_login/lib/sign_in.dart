import 'package:flutter/material.dart';
import 'package:flutter_app_login/constants.dart';
import 'package:flutter_app_login/home_page.dart';
import 'package:flutter_app_login/password_reminder.dart';
import 'package:flutter_app_login/sign_up.dart';
import 'package:flutter_app_login/widgets/caption_text.dart';
import 'package:flutter_app_login/widgets/email_field.dart';
import 'package:flutter_app_login/widgets/password_field.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() {
    return _LoginScreenState();
  }
}

class _LoginScreenState extends State<LoginScreen> {

  @override
  Widget build(BuildContext context) {
    final welcomeText = CaptionText(caption: Text(
      'Sign In',
      style: LoginTextStyle,
    ));

    final email = EmailField(hintText: 'Cycki',);

    final password = PasswordField(hintText: 'Dupa', icon: Icon(
      Icons.lock,
      color: Color(0xFF0B2775),
    ));

    final loginButton = Container(
      height: 45.0,
      width: double.infinity,
      child: RaisedButton(
        elevation: 5.0,
          onPressed: () {
            Route route = MaterialPageRoute(builder: (context) => HomePage());
            Navigator.push(context, route);
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          color: Color(0xFFC49102),
          child: Text(
            'LOGIN',
            style: LoginTextButton,
          )),
    );

    final forgotLabel = FlatButton(
      child: Text(
        'Forgot password?',
        style: TextStyle(color: Colors.white),
      ),
      onPressed: () {
        Route route = MaterialPageRoute(builder: (context) => PasswordReminder());
        Navigator.push(context, route);
      },
    );

    final signupLabel = FlatButton(
      child: Text(
        'Don\'t have an Account? Sign up',
        style: TextStyle(color: Colors.white),
      ),
      onPressed: () {
        Route route = MaterialPageRoute(builder: (context) => SignupScreen());
        Navigator.push(context, route);
      },
    );

    final body = Container(
      padding: EdgeInsets.only(left: 20.0, right: 20.0),
      child: Column(
        children: <Widget>[
          welcomeText,
          SizedBox(
            height: 50,
          ),
          email,
          SizedBox(
            height: 30.0,
          ),
          password,
          SizedBox(
            height: 30.0,
          ),
          loginButton,
          SizedBox(
            height: 30.0,
          ),
          forgotLabel,
          SizedBox(
            height: 120.0,
          ),
          signupLabel
        ],
      ),
    );

    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Color(0xFF82A0F4),
      body: SingleChildScrollView(
        child: body,
      )
    );
  }
}