import 'package:flutter/material.dart';
import 'package:flutter_app_login/constants.dart';
import 'package:flutter_app_login/sign_in.dart';

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

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
//      initialValue: 'adresemail@gmail.com',
      style: TextStyle(
        color: Color(0xFF0B2775),
      ),
      autofocus: false,
//      validator: (value) {
//        if (value.isEmpty) {
//          return 'Enter your email';
//        }
//        return null;
//        },
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFF0B2775), width: 1.0),
          borderRadius: BorderRadius.circular(10.0),
        ),
        hintText: 'Email',
        hintStyle: HintTextStyle,
        prefixIcon: Icon(
          Icons.email,
          color: Color(0xFF0B2775),
        ),
      ),
    );

    final password = TextFormField(
//      initialValue: '123',
        obscureText: true,
        autofocus: false,
        style: TextStyle(color: Color(0xFF0B2775)),
//        validator: (value) {
//          if (value.isEmpty) {
//            return 'Enter your password';
//          }
//          return null;
//        },
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
//      initialValue: '123',
        obscureText: true,
        autofocus: false,
        style: TextStyle(color: Color(0xFF0B2775)),
//        validator: (value) {
//          if (value.isEmpty) {
//            return 'Enter your password';
//          }
//          return null;
//        },
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
            // Validate returns true if the form is valid, or false
//          // otherwise.
////          if (_formKey.currentState.validate()) {
////            // If the form is valid, display a Snackbar.
////            Scaffold.of(context).showSnackBar(SnackBar(content: Text('Loging in...')));
////          }
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
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
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
            height: 180.0,
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
