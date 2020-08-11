import 'package:flutter/material.dart';
import 'package:flutter_app_login/constants.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() {
    return _LoginScreenState();
  }
}

class _LoginScreenState extends State<LoginScreen> {
  //final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(40.0),
      margin: EdgeInsets.only(top: 20.0),
      child: Column(
        children: <Widget>[_buildWelcomeText(), _buildEmailField(), _buildPasswordField()],
      ),
    );
  }

  Widget _buildWelcomeText() {
    return Column(
      children: <Widget>[
        Align(
          alignment: Alignment.center,
          child: Text(
            'Sign In',
            style: LoginTextStyle,
          ),
        )
      ],
    );
  }

  Widget _buildEmailField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 30.0,
        ),
        Container(
            alignment: Alignment.centerLeft,
            decoration: BoxDecorationStyle,
            height: 45.0,
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (value.isEmpty) {
                  return 'Enter your email';
                }
                return null;
              },
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Roboto',
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(left: 20.0),
                hintText: 'Enter email',
                hintStyle: HintTextStyle,
              ),
            ))
      ],
    );
  }

  Widget _buildPasswordField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 30.0,
        ),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecorationStyle,
          height: 45.0,
          child: TextField(
            obscureText: true,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Roboto',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(left: 20.0),
              hintText: 'Enter password',
              hintStyle: HintTextStyle,
            ),
          ),
//          obscureText: true,
//          decoration: InputDecoration(hintText: 'Enter your password', hintStyle: HintTextStyle),
//          validator: (value) {
//            if (value.isEmpty) {
//              return 'Enter your password';
//            }
//            return null;
        )
      ],
    );
  }
  // Build a Form widget using the _formKey created above.

}

//    return Form(
//      key: _formKey,
//      child: Container(
//          padding: const EdgeInsets.symmetric(vertical: 35.0, horizontal: 40.0),
//          margin: EdgeInsets.all(20.0),
//          child: Column(
//
//              //crossAxisAlignment: CrossAxisAlignment.start,
//              children: <Widget>[
//                Text(
//                  "Sign In",
//                  style: LoginTextStyle,
//                ),
//                SizedBox(
//                  height: 30.0,
//                ),
//                TextFormField(
//                  keyboardType: TextInputType.emailAddress,
//                  decoration: InputDecoration(hintText: 'Email', hintStyle: HintTextStyle),
//                  validator: (value) {
//                    if (value.isEmpty) {
//                      return 'Enter your email';
//                    }
//                    return null;
//                  },
//                ),
//                SizedBox(
//                  height: 30.0,
//                ),
//                TextFormField(
//                  obscureText: true,
//                  decoration: InputDecoration(hintText: 'Password', hintStyle: HintTextStyle),
//                  validator: (value) {
//                    if (value.isEmpty) {
//                      return 'Enter your password';
//                    }
//                    return null;
//                  },
//                ),
//                SizedBox(
//                  height: 35.0,
//                ),
//                Container(
//                  width: double.infinity,
//                  child: RaisedButton(
//                    onPressed: () {
//                      // Validate returns true if the form is valid, or false
//                      // otherwise.
//                      if (_formKey.currentState.validate()) {
//                        // If the form is valid, display a Snackbar.
//                        Scaffold.of(context).showSnackBar(SnackBar(content: Text('Loging in...')));
//                      }
//                    },
//                    shape: RoundedRectangleBorder(
//                      borderRadius: BorderRadius.circular(30.0),
//                    ),
//                    color: Color(0XFFE6AF2E),
//                    child: Text(
//                      'LOGIN',
//                      style: LoginTextButton,
//                    ),
//                  ),
//                )
//              ])),
//    );
//  }
//}
