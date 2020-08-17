import 'package:flutter/material.dart';
import 'package:flutter_app_login/models/user.dart';
import 'package:flutter_app_login/sign_in.dart';
import 'package:provider/provider.dart';

void main() => runApp(ChangeNotifierProvider(
      create: (context) => UserModel(),
      child: MyApp(),
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Divorce Manager';

    return MaterialApp(
      title: appTitle,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF0B2775),
        body: LoginScreen(),
      ),
    );
  }
}
