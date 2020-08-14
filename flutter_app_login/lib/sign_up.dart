import 'package:flutter/material.dart';
import 'package:flutter_app_login/constants.dart';
import 'package:flutter_app_login/sign_in.dart';
import 'package:flutter_app_login/widgets/email_widget.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() {
    return _SignupScreenState();
  }
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    final signUpText = Padding(
      padding: EdgeInsets.only(top: 120),
      child: Text(
        'Sign Up',
        style: LoginTextStyle,
      ),
    );

    final email = EmailWidget(hintText: 'Dupa',);

    final password = TextFormField(
        obscureText: true,
        autofocus: false,
        style: TextStyle(color: Color(0xFF0B2775)),
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF0B2775), width: 1.0),
            borderRadius: BorderRadius.circular(10.0),
          ),
          hintText: 'Password',
          hintStyle: HintTextStyle,
          prefixIcon: Icon(
            Icons.lock,
            color: Color(0xFF0B2775),
          ),
        ));

    final confirmPassword = TextFormField(
        obscureText: true,
        autofocus: false,
        style: TextStyle(color: Color(0xFF0B2775)),
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF0B2775), width: 1.0),
            borderRadius: BorderRadius.circular(10.0),
          ),
          hintText: 'Password',
          hintStyle: HintTextStyle,
          prefixIcon: Icon(
            Icons.lock,
            color: Color(0xFF0B2775),
          ),
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
          signUpText,
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
            height: 120.0,
          ),
          signupLabel,
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
