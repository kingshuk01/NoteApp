import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        Container(
          child: Text("Welcome"),
        ),
        Container(
          child: Form(child: TextFormField()),
        ),
        Container(
          child: RaisedButton(onPressed: null),
        ),
        Container()
      ],
    ));
  }
}
