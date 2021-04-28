import 'package:flutter/material.dart';
import 'package:signin_example/ui/login.dart';

void main() => runApp(SignUpApp());

class SignUpApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => LoginScreen(),
        '/welcome': (context) => WelcomeScreen(),
      },
    );
  }
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[100],
      body: Center(
        child: SizedBox(
          width: 400,
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: LoginForm(),
          ),
        ),
      ),
    );
  }
}

// TODO export to own class file 202104.28-10.51
class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Center(
      child: Text('Welcome', style: Theme.of(context).textTheme.headline2),
    ));
  }
}
