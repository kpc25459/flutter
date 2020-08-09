import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
//  final _formKey = GlobalKey<FormState>();
//  String _password;
//  String _email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Panel logowania do aplikacji: JEŻYK"),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
//          child: Form(
//            key: _formKey,
        child: Column(children: <Widget>[
          SizedBox(
            height: 20.0,
          ),
          Text(
            'Podaj dane do logowania:',
            style: TextStyle(fontSize: 15, color: Colors.blueGrey, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10.0,
          ),
          TextFormField(
//                      onSaved: (value) => _email = value,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(labelText: 'Adres email')),
          TextFormField(
//                      onSaved: (value) => _password = value,
              obscureText: true,
              decoration: InputDecoration(labelText: 'Hasło')),
          SizedBox(
            height: 30.0,
          ),
          RaisedButton(child: Text('Zaloguj'), onPressed: () {}),
        ]),
      ),
    );
  }
}
