import 'package:flutter/material.dart';
import 'package:flutter_app_login/home_page.dart';
import 'package:flutter_app_login/password_reminder.dart';
import 'package:flutter_app_login/sign_up.dart';
import 'package:flutter_app_login/sign_in.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
//  final routes = <String, WidgetBuilder>{
//    LoginScreen.tag: (content) => LoginScreen(),
//    SignupScreen.tag: (content) => SignupScreen(),
//    HomePage.tag: (content) => HomePage(),
//  };

  @override
  Widget build(BuildContext context) {
    final appTitle = 'Divorce Manager';

    return MaterialApp(
      title: appTitle,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFFDFDFF),
        body: LoginScreen(),
      ),
    );
  }
}
