import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            children: [emailField(), passwordField(),submitButton()],
          ),
        ),
      ),
    );
  }

  Widget emailField() {
    return TextField(
      decoration: InputDecoration(hintText: 'enter email',labelText: 'email'),
    );
  }

  Widget passwordField() {
    return TextField(
      decoration: InputDecoration(hintText: 'enter password',labelText: 'Password'),
    );
  }
  Widget submitButton(){
    return RaisedButton(onPressed: (){},child: Text('login'),);
  }
}
