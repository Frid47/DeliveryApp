import 'package:delivery/utill/input_form.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  Column contentContainer() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        InputForm().appLogo(),
        InputForm().appName(),
        marginTop(),
        InputForm().inputName(),
        marginTop(),
        InputForm().inputPassword(),
        marginTop(),
        InputForm().btnLogIn()
      ],
    );
  }

  SizedBox marginTop() {
    return SizedBox(
      height: 20,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: RadialGradient(
              colors: [Colors.white, Colors.blue],
              center: Alignment(0, -0.36),
              radius: 1,
            ),
          ),
          child: Center(
            child: SingleChildScrollView(
              child: contentContainer(),
            ),
          ),
        ),
      ),
    );
  }
}
