import 'package:authentication_flutter_app/forget_password.dart';
import 'package:authentication_flutter_app/login.dart';
import 'package:authentication_flutter_app/sign_up.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      initialRoute: 'login',
      routes: {
        'login':(_)=>LoginPage(),
        'signUp':(_)=>SignUp(),
        'forgetPassword':(_)=>ForgetPassword()

      },
    );
  }
}

