import '/Screen/home/home.dart';
import '/Screen/TopUP/AddCard.dart';
import '/styles/app_color.dart';
import '/images/images.dart';
import '/utils/size_config.dart';
import 'package:flutter/material.dart';

class Creditcard extends StatelessWidget {
  const Creditcard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsX.whiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _Part1(context),
              _Part2(context),
            ],
          ),
        ),
      ),
    );
  }
}

Widget Containers(String text) {
  return Container(
    alignment: Alignment.center,
    margin: EdgeInsets.only(top: 10, left: 5),
    height: SizeConfig.screenHeight * 0.08,
    width: SizeConfig.screenWidth * 0.25,
    child: Text(
      text,
      style: TextStyle(
          color: Color(0xFF4AA7FD), fontSize: 20, fontWeight: FontWeight.w600),
    ),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30),
      color: Colors.grey[100],
    ),
  );
}

Widget _Part2(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(top: SizeConfig.screenHeight * 0.04),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _myTextWidget("Set Amount", 0xFF000000, FontWeight.w800, 22, 0, 20, 0),
        _myTextWidget("How much money would you like to top up?", 0xFFAAAAAA,
            FontWeight.w300, 18, 8, 20, 0),
        Center(
          child: _myTextWidget(
              "\$130.00", 0xFF000000, FontWeight.bold, 28, 20, 0, 0),
        ),
        SizedBox(
          height: 10,
        ),
        Divider(
          color: Colors.grey[200],
          thickness: 2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Containers("\$100.00"),
            Containers("\$250.00"),
            Containers("\$500.00"),
          ],
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (ctx) => AddCard()));
          },
          child: Center(
            child: Container(
              margin: EdgeInsets.only(
                top: SizeConfig.screenHeight * 0.03,
              ),
              alignment: Alignment.center,
              child: const Text(
                "Top Up",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
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
        GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(Home.routename);
          },
          child: Align(
            alignment: Alignment.center,
            child: _myTextWidget(
                "Back to home", 0xFFAAAAAA, FontWeight.w700, 20, 20, 0, 0),
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    ),
  );
}

Widget _Part1(BuildContext context) {
  return Container(
    height: SizeConfig.screenHeight / 2.32,
    width: SizeConfig.screenWidth * 100,
    decoration: const BoxDecoration(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(25),
        bottomRight: Radius.circular(25),
      ),
      color: ColorsX.AppBluecolor,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: SizeConfig.screenHeight * 0.03),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    margin:
                        EdgeInsets.only(left: SizeConfig.screenWidth * 0.05),
                    padding: EdgeInsets.only(left: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: ColorsX.greyText,
                        width: 1,
                      ),
                      color: ColorsX.AppBluecolor,
                    ),
                    alignment: Alignment.center,
                    child: IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(Icons.arrow_back_ios,
                          color: ColorsX.white),
                    ),
                  ),
                  const Spacer(),
                  const Text(
                    "Top up with Credit Card",
                    style: TextStyle(
                      fontSize: 20,
                      color: ColorsX.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Expanded(child: Container()),
                ],
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _myTextWidget("Credit Card", 0xFFFFFFFF, FontWeight.w600,
                          20, 25, 20, 0),
                      _myTextWidget("Chose your credit card", 0xFFFFFFFF,
                          FontWeight.w400, 16, 5, 20, 0),
                    ],
                  ),
                  Expanded(child: Container()),
                  Container(
                    width: 60,
                    height: 60,
                    margin:
                        EdgeInsets.only(right: SizeConfig.screenWidth * 0.05),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: ColorsX.greyText,
                        width: 1,
                      ),
                      color: Colors.orange,
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.add,
                        color: ColorsX.white,
                        size: 35,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(
                  top: SizeConfig.screenWidth * 0.052,
                  left: SizeConfig.screenWidth * 0.05,
                  right: SizeConfig.screenWidth * 0.05,
                ),
                padding: EdgeInsets.only(
                  right: SizeConfig.screenWidth * 0.03,
                  left: SizeConfig.screenWidth * 0.05,
                  top: SizeConfig.screenHeight * 0.01,
                ),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  color: Color(0XFF4AA7FD),
                ),
                height: SizeConfig.screenHeight / 5.9,
                width: SizeConfig.screenWidth * 80,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        _myTextWidget("Balance", 0xFFFFFFFF, FontWeight.normal,
                            18, 0, 0, 0),
                        Expanded(
                          child: Container(),
                        ),
                        Image.asset(circle),
                      ],
                    ),
                    _myTextWidget("\$26,968.00", 0xFFFFFFFF, FontWeight.bold,
                        28, 5, 0, 0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(chip),
                        Align(
                          alignment: Alignment.topRight,
                          child: _myTextWidget("...... ...  ... 3765",
                              0xFFFFFFFF, FontWeight.bold, 25, 10, 15, 0),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

/* */
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
