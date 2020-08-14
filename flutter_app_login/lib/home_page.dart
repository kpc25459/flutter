import 'package:flutter/material.dart';
import 'package:flutter_app_login/constants.dart';

class HomePage extends StatefulWidget {
//  static String tag = 'home-page';
  @override
  _HopePageState createState() {
    return _HopePageState();
  }
}

class _HopePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    final welcome = Padding(
      padding: EdgeInsets.only(top: 120.0),
      child: Text(
        'Welcome to divorce Manager',
        style: LoginTextStyle,
      ),
    );

    final lorem = Text(
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec hendrerit condimentum mauris id tempor. Praesent eu commodo lacus. Praesent eget mi sed libero eleifend tempor. Sed at fringilla ipsum. Duis malesuada feugiat urna vitae convallis. Aliquam eu libero arcu.',
        style: TextStyle(fontSize: 16.0, color: Colors.white),
      );

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.blue,
          Colors.lightBlueAccent,
        ]),
      ),
      child: Column(
        children: <Widget>[welcome, lorem],
      ),
    );

    return Scaffold(
      body: body,
    );
  }
}