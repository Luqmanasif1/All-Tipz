import 'package:alltipz/Screen/Signup/signup_screen.dart';

import '/images/images.dart';
import '/utils/size_config.dart';
import 'package:flutter/material.dart';
import '/styles/app_color.dart';

import '/Screen/SignScreen/login.dart';
import '/Screen/Signup/signup_screen.dart';

class Option extends StatelessWidget {
  static const routename = "/home-screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsX.AppBluecolor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.07),
              Center(
                child: Image.asset(
                  homescreen,
                  fit: BoxFit.fill,
                  width: SizeConfig.screenWidth,
                ),
              ),
              Center(
                child: _myTextWidget("A new way to trip", 0xFFFFFFFF,
                    FontWeight.w600, 30, 15, 0, 0),
              ),
              _myTextWidget("Securly & more faster", 0xFFFFFFFF,
                  FontWeight.w600, 30, 2, 7, 7),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed(LogIn.routename);
                },
                child: Container(
                  margin: EdgeInsets.only(
                    top: SizeConfig.screenHeight * 0.03,
                  ),
                  child: const Center(
                    child: Text(
                      "Login",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                  width: SizeConfig.screenWidth * 0.90,
                  height: SizeConfig.screenHeight * 0.08,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(74, 167, 253, 1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed(SignUp.routename);
                },
                child: Align(
                  alignment: Alignment.center,
                  child: _myTextWidget(
                      "Sign Up", 0xFFFFFFFF, FontWeight.w600, 20, 25, 0, 0),
                ),
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _myTextWidget(
  String text,
  int colorCode,
  FontWeight fontWeight,
  double fontsize,
  double top,
  double left,
  double right,
) {
  return Container(
    margin: EdgeInsets.only(top: top, left: left, right: right),
    child: Text(
      text,
      style: TextStyle(
          color: Color(
            colorCode,
          ),
          fontWeight: fontWeight,
          fontSize: fontsize),
    ),
  );
}
