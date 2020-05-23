import 'package:flutter/material.dart';

class InputForm {

  // Comment sda

  Container appLogo() {
    return Container(
      height: 200,
      width: 200,
      child: Image.asset('images/logo.png'),
    );
  }

  Container inputName() {
    return Container(
      width: 250,
      child: TextField(
        decoration: InputDecoration(
          labelText: 'Name',
          enabledBorder: OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(),
        ),
      ),
    );
  }

  Container inputPassword() {
    return Container(
      width: 250,
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          labelText: 'Password',
          enabledBorder: OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(),
        ),
      ),
    );
  }

  Text appName() {
    return Text(
      'Delivery',
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    );
  }

  Container btnLogIn() {
    return Container(
      width: 250,
      child: RaisedButton(
        onPressed: () {},
        child: Text('Log In'),
      ),
    );
  }

  InputForm();
}
