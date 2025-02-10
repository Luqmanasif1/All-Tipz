import 'package:flutter/material.dart';
import '/images/images.dart';
import '/styles/app_color.dart';
import '/utils/size_config.dart';
import '/Screen/home/home.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);
  static const routename = "/Welcome";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsX.AppBluecolor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Container(
              width: SizeConfig.screenWidth,
              height: SizeConfig.screenHeight,
              margin: EdgeInsets.only(top: SizeConfig.screenHeight * 0.08),
              child: Column(
                children: [
                  Center(
                    child: Image.asset(welcome),
                  ),
                  Center(
                    child: _myTextWidget("Welcome to ALLTipz", 0xFFFFFFFF,
                        FontWeight.w800, 25, 18, 0, 0),
                  ),
                  _myTextWidget(
                      "Voila! You have successfully created your account",
                      0xFFFFFFFF,
                      FontWeight.w300,
                      20,
                      4,
                      20,
                      20),
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed(Home.routename);
                      },
                      child: Container(
                        margin: EdgeInsets.only(
                          top: SizeConfig.screenHeight * 0.08,
                        ),
                        child: const Center(
                          child: Text(
                            "Get Started",
                            style: TextStyle(fontSize: 19, color: Colors.white),
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
                  ),
                ],
              ),
            ),
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
