import 'package:flutter/material.dart';
import 'package:flutter_app_login/constants.dart';

class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "Wprowadź dane do logowania",
              style: TextStyle(fontFamily: 'Roboto', color: Colors.blueGrey, fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(labelText: 'Adres email', hintStyle: HintTextStyle),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Wprowadź adres email';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all((20.0)),
            child: TextFormField(
              obscureText: true,
              decoration: InputDecoration(labelText: 'Hasło'),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Wprowadź hasło';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: RaisedButton(
              onPressed: () {
                // Validate returns true if the form is valid, or false
                // otherwise.
                if (_formKey.currentState.validate()) {
                  // If the form is valid, display a Snackbar.
                  Scaffold.of(context).showSnackBar(SnackBar(content: Text('Trwa logowanie...')));
                }
              },
              child: Text(
                'Zaloguj',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
