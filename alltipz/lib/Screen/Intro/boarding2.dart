import 'package:flutter/material.dart';
import '/images/images.dart';
import '/styles/app_color.dart';
import '/utils/size_config.dart';
import '/Screen/Intro/boarding3.dart';

class BoardingTwo extends StatelessWidget {
  const BoardingTwo({Key? key}) : super(key: key);
  static const routename = "/BoardingTwo";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsX.AppBluecolor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: SizeConfig.screenHeight * 0.10),
                child: const Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Skip    ",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.08,
              ),
              Center(
                child: Image.asset(
                  HandMobile,
                  fit: BoxFit.fill,
                  height: 230,
                ),
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.10,
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0),
                  ),
                ),
                width: SizeConfig.screenHeight,
                height: SizeConfig.screenWidth,
                child: Column(
                  children: [
                    _myTextWidget("Safest Platform", 0xFF000000,
                        FontWeight.w700, 29, 45, 30, 30),
                    _myTextWidget("Multiple verification and face ID makes",
                        0xFFAAAAAA, FontWeight.w400, 19, 10, 8, 8),
                    _myTextWidget("Your account more safely", 0xFFAAAAAA,
                        FontWeight.w400, 19, 0, 12, 12),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .pushNamed(BoardingThree.routename);
                      },
                      child: Container(
                        margin: EdgeInsets.only(
                          top: SizeConfig.screenHeight * 0.03,
                        ),
                        child: const Center(
                          child: Text(
                            "Next",
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
                    )
                  ],
                ),
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
