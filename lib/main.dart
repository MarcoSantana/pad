import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pad/ui/login.dart';

void main() => runApp(PadApp());

class PadApp extends StatelessWidget {
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
          child: Column(
            children: [
              Spacer(),
              SvgPicture.asset(
                'assets/images/undraw_Filing_system_re_56h6.svg',
                width: 200,
                placeholderBuilder: (context) => Icon(Icons.error),
              ),
              Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 400,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: LoginForm(),
                    ),
                  )),
              SizedBox(
                width: 400,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: TextButton(
                    key: Key('signInButton'),
                    onPressed: () {
                      Navigator.of(context).pushNamed('/welcome');
                    },
                    child: Text(
                      'No tengo una cuenta',
                    ),
                    style: TextButton.styleFrom(
                      primary: Colors.purple.shade100,
                    ),
                  ),
                ),
              ),
              Spacer(),
            ],
          ),
        ));
  }
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text('Welcome', style: Theme.of(context).textTheme.headline2),
    ));
  }
}
