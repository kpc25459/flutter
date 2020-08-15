import 'package:flutter/material.dart';
import 'package:flutter_app_login/constants.dart';
import 'package:flutter_app_login/sign_in.dart';
import 'package:flutter_app_login/widgets/email_field.dart';
import 'package:flutter_app_login/widgets/password_field.dart';
import 'package:flutter_app_login/widgets/caption_text.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() {
    return _SignupScreenState();
  }
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {

    final welcomeText = CaptionText(caption: Text(
        'Sign Up',
        style: LoginTextStyle,
      ),
    );

    final email = EmailField(hintText: 'Email',);

    final password = PasswordField(hintText: 'Password', icon: Icon(
      Icons.lock,
      color: Colors.white,
    ));

    final confirmPassword = PasswordField(hintText: 'Confirm Password', icon: Icon(
      Icons.lock,
      color: Colors.white,
    ));

    final loginButton = Container(
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
            'REGISTER',
            style: LoginTextButton,
          )),
    );

    final signupLabel = FlatButton(
      child: Text(
        'Have an Account? Sign in',
        style: TextStyle(color: Colors.white),
      ),
      onPressed: () {
        Route route = MaterialPageRoute(builder: (context) => LoginScreen());
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
          confirmPassword,
          SizedBox(
            height: 30.0,
          ),
          loginButton,
          SizedBox(
            height: 150.0,
          ),
          signupLabel,
        ],
      ),
    );

    return Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Color(0xFF0B2775),
        body: SingleChildScrollView(
          child: body,
        ));
  }
}
