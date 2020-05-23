import 'package:delivery/screen/sign_in.dart';
import 'package:delivery/screen/sign_up.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Drawer menu
  Drawer drawerMenu() => Drawer(
        child: Column(
          children: <Widget>[
            drawerHeader(),
            btnLogIn(),
            btnSignUp(),
          ],
        ),
      );

  // Sing up button
  ListTile btnSignUp() {
    return ListTile(
      onTap: () {
        Navigator.pop(context);
        MaterialPageRoute materialPageRoute = MaterialPageRoute(builder: (context) => SignUp());
        Navigator.of(context).push(materialPageRoute);
      },
      leading: Icon(Icons.android),
      title: Text('Sign Up'),
    );
  }

  // Sign in button
  ListTile btnLogIn() {
    return ListTile(
      onTap: () {
        Navigator.pop(context);
        MaterialPageRoute materialPageRoute = MaterialPageRoute(builder: (context) => SignIn());
        Navigator.of(context).push(materialPageRoute);
      },
      leading: Icon(Icons.android),
      title: Text('Sign In'),
    );
  }

  // Drawer header
  UserAccountsDrawerHeader drawerHeader() {
    return UserAccountsDrawerHeader(
      accountName: Text('Guest'),
      accountEmail: Text('Email'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Delivery'),
      ),
      drawer: drawerMenu(),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Text('data'),
            Text('data'),
            Text('data'),
          ],
        ),
      ),
    );
  }
}
