import '/Screen/Intro/boarding3.dart';
import 'package:flutter/material.dart';
import 'Screen/Intro/splash_screen.dart';

import '/Screen/Intro/boarding2.dart';
import '/Screen/Intro/boarding1.dart';

import '/Screen/SignScreen/option_screen.dart';
import 'Screen/SignScreen/login.dart';

import 'Screen/SignScreen/Rest_Password.dart';
import 'Screen/SignScreen/New_Password.dart';
import 'Screen/Signup/signup_screen.dart';
import 'Screen/Signup/Name.dart';

import 'Screen/Signup/phone.dart';

import 'Screen/home/home.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'All Tipz',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        Home.routename: (context) => Home(),
        '/': (context) => SplashScreen(),
        Boardingone.routename: (context) => Boardingone(),
        BoardingTwo.routename: (context) => BoardingTwo(),
        BoardingThree.routename: (context) => BoardingThree(),
        Option.routename: (context) => Option(),
        LogIn.routename: (context) => LogIn(),
        RestPassword.routename: (context) => RestPassword(),
        NewPassword.routename: (context) => NewPassword(),
        SignUp.routename: (context) => SignUp(),
        NameSignUp.routename: (context) => NameSignUp(),
        Phone.routename: (context) => Phone(),
      },
    );
  }
}
