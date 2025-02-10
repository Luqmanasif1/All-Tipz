import 'package:alltipz/Screen/Intro/boarding2.dart';
import 'package:flutter/material.dart';
import '/images/images.dart';
import '/styles/app_color.dart';
import '/utils/size_config.dart';
import '/Screen/SignScreen/option_screen.dart';

class Boardingone extends StatelessWidget {
  const Boardingone({Key? key}) : super(key: key);
  static const routename = "/Boardingone";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsX.AppBluecolor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: SizeConfig.screenHeight * 0.08),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(Option.routename);
                    },
                    child: const Text(
                      "Skip    ",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.08,
              ),
              Center(
                child: Image.asset(
                  scanner,
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
                width: SizeConfig.screenWidth * 100,
                height: SizeConfig.screenHeight / 3,
                child: Column(
                  children: [
                    _myTextWidget("Fastest Payment", 0xFF000000,
                        FontWeight.w700, 29, 45, 30, 30),
                    _myTextWidget("QR code scanning technology makes",
                        0xFFAAAAAA, FontWeight.w400, 19, 10, 8, 8),
                    _myTextWidget("Your payment process more faster",
                        0xFFAAAAAA, FontWeight.w400, 19, 0, 10, 10),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed(BoardingTwo.routename);
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
