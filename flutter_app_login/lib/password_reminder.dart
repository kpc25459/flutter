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
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
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


//    return Container(
//        padding: EdgeInsets.all(40.0),
//        margin: EdgeInsets.only(top: 20.0),
//        child: Column(
//          children: <Widget>[_buildEmailField(), _buildRaisedButton()],
//        ));
//  }
//
//  Widget _buildEmailField() {
//    return Column(
//      crossAxisAlignment: CrossAxisAlignment.start,
//      children: <Widget>[
//        SizedBox(
//          height: 30.0,
//        ),
//        Container(
//            alignment: Alignment.centerLeft,
////            decoration: BoxDecorationStyle,
//            height: 45.0,
//            child: TextFormField(
//              keyboardType: TextInputType.emailAddress,
//              initialValue: 'daria@gmail.com',
//              autofocus: false,
//              validator: (value) {
//                if (value.isEmpty) {
//                  return 'Enter your email';
//                }
//                return null;
//              },
//              style: TextStyle(
//                color: Colors.white,
//                fontFamily: 'Roboto',
//              ),
//              decoration: InputDecoration(
//                border: InputBorder.none,
//                contentPadding: EdgeInsets.only(left: 20.0),
//                prefixIcon: Icon(
//                  Icons.email,
//                  color: Colors.white,
//                ),
//                hintText: 'Enter email',
//                hintStyle: HintTextStyle,
//              ),
//            ))
//      ],
//    );
//  }
//
//  Widget _buildRaisedButton() {
//    return Container(
//      width: 200.0,
//      child: RaisedButton(
//        onPressed: () {
//          Route route = MaterialPageRoute(builder: (context) => LoginScreen());
//          Navigator.push(context, route);
//          // Validate returns true if the form is valid, or false
//          // otherwise.
//          //          if (_formKey.currentState.validate()) {
//          //            // If the form is valid, display a Snackbar.
//          //            Scaffold.of(context).showSnackBar(SnackBar(content: Text('Loging in...')));
//          //          }
//        },
//        shape: RoundedRectangleBorder(
//          borderRadius: BorderRadius.circular(30.0),
//        ),
//        color: Color(0XFF62929E),
//        child: Text(
//          'LOGIN',
//          style: LoginTextButton,
//        ),
//      ),
//    );
//  }
//}
