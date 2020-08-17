import 'package:flutter/material.dart';
import 'package:flutter_app_login/constants.dart';
import 'package:flutter_app_login/models/user.dart';
import 'package:flutter_app_login/widgets/caption_text.dart';
import 'package:provider/provider.dart';

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

    Widget buildWelcomeText(String userName) {
      return CaptionText(
        caption: Text(
          'Hello ${userName}!',
          style: LoginTextStyle,
        ),
      );
    }

    final lorem = Text(
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec hendrerit condimentum mauris id tempor. Praesent eu commodo lacus. Praesent eget mi sed libero eleifend tempor. Sed at fringilla ipsum. Duis malesuada feugiat urna vitae convallis. Aliquam eu libero arcu.',
      style: TextStyle(fontSize: 16.0, color: Colors.white),
    );

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(left: 20.0, right: 20.0),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 50.0,
          ),
          Consumer<UserModel>(builder: (context, model, child) => buildWelcomeText(model.name)),
          SizedBox(
            height: 50.0,
          ),
          lorem
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
