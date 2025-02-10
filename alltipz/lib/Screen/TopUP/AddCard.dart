import 'package:alltipz/Screen/home/home.dart';

import '/styles/app_color.dart';
import '/images/images.dart';
import '/utils/size_config.dart';
import 'package:flutter/material.dart';
import '/Screen/TopUP/Sucess.dart';

class AddCard extends StatefulWidget {
  const AddCard({Key? key}) : super(key: key);

  @override
  _AddCardState createState() => _AddCardState();
}

class _AddCardState extends State<AddCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsX.AppBluecolor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(top: SizeConfig.screenHeight * 0.03),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: SizeConfig.screenWidth * 0.05,
                      right: SizeConfig.screenWidth * 0.05),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        padding: EdgeInsets.only(left: 7),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: ColorsX.whiteColor,
                            width: 0.5,
                          ),
                          color: ColorsX.AppBluecolor,
                        ),
                        child: IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: const Icon(
                            Icons.arrow_back_ios,
                            color: ColorsX.white,
                          ),
                        ),
                      ),
                      const Spacer(),
                      const Text(
                        "Add New Card",
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Expanded(child: Container()),
                    ],
                  ),
                ),
                _myTextWidget(
                    "Scan completed, now verify your data",
                    0xFFFFFFFF,
                    FontWeight.w400,
                    20,
                    22,
                    SizeConfig.screenWidth * 0.05,
                    0),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.02,
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: SizeConfig.screenHeight * 0.02,
                  ),
                  height: SizeConfig.screenHeight / 1.3,
                  width: SizeConfig.screenWidth * 100,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          top: SizeConfig.screenHeight * 0.04,
                        ),
                        padding: EdgeInsets.only(top: 15, right: 15, left: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.grey[100],
                        ),
                        height: SizeConfig.screenHeight / 4.3,
                        width: SizeConfig.screenWidth * 0.90,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.topRight,
                              child: Image.asset(
                                circle,
                                color: Colors.black12,
                              ),
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  chip,
                                ),
                                _myTextWidget("1956 7561 3716 2356 ",
                                    0xFFAAAAAA, FontWeight.w300, 20, 0, 20, 0)
                              ],
                            ),
                            Row(
                              children: [
                                _myTextWidget("BIANCA COOPER", 0xFF8F92A1,
                                    FontWeight.w400, 18, 30, 0, 0),
                                Expanded(child: Container()),
                                _myTextWidget("11/24", 0xFF8F92A1,
                                    FontWeight.w400, 18, 30, 0, 0),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: SizeConfig.screenHeight * 0.03,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: SizeConfig.screenWidth * 0.05,
                            right: SizeConfig.screenWidth * 0.05),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'Cardholder name',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: SizeConfig.screenHeight * 0.03,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: SizeConfig.screenWidth * 0.05,
                            right: SizeConfig.screenWidth * 0.05),
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'CardNumber',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: SizeConfig.screenHeight * 0.03,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: SizeConfig.screenWidth * 0.05,
                            right: SizeConfig.screenWidth * 0.05),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: TextField(
                                decoration: InputDecoration(
                                  labelText: 'Expiry date',
                                ),
                              ),
                            ),
                            SizedBox(width: 10.0),
                            Expanded(
                              flex: 1,
                              child: TextField(
                                decoration: InputDecoration(
                                  labelText: '3 Digit-CVV',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (ctx) => Succes()));
                        },
                        child: Container(
                          margin: EdgeInsets.only(
                            top: SizeConfig.screenHeight * 0.03,
                          ),
                          child: const Center(
                            child: Text(
                              "Continue",
                              style:
                                  TextStyle(fontSize: 19, color: Colors.white),
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
                    ],
                  ),
                ),
              ],
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
