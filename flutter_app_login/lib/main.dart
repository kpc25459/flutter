import 'package:flutter/material.dart';
import 'package:flutter_app_login/sign_up.dart';
import 'package:flutter_app_login/sing_in.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Divorce Manager';

    return MaterialApp(
      title: appTitle,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFF4D58D),
        body: LoginScreen(),
      ),
    );
  }
}

