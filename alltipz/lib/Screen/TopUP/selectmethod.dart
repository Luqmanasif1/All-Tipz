import '/styles/app_color.dart';
import '/images/images.dart';
import '/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:rounded_expansion_tile/rounded_expansion_tile.dart';
import '/Screen/TopUP/creditcard.dart';

class SelectMethod extends StatelessWidget {
  const SelectMethod({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsX.AppBluecolor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(top: SizeConfig.screenHeight * 0.05),
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
                      "Select Method",
                      style: TextStyle(
                        fontSize: 25,
                        color: ColorsX.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Expanded(child: Container()),
                  ],
                ),
                _myTextWidget(
                    "Select top up methods",
                    0xFFFFFFFF,
                    FontWeight.w400,
                    18,
                    SizeConfig.screenHeight * 0.07,
                    SizeConfig.screenWidth * 0.05,
                    0),
                Container(
                  margin: EdgeInsets.only(top: 25),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40.0),
                    ),
                  ),
                  width: SizeConfig.screenWidth * 100,
                  height: SizeConfig.screenHeight / 1.4,
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(top: 25, left: 25, right: 25),
                      child: Card(
                        color: Colors.grey[100],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16)),
                        child: RoundedExpansionTile(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16)),
                          title: GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (ctx) => Creditcard()),
                                );
                              },
                              child: Expand_Data(card, "Credit Card", 0)),
                          children: [],
                        ),
                      ),
                    ),
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

Widget Expand_Data(String img, String text1, double padd) {
  return Padding(
    padding: EdgeInsets.only(left: SizeConfig.screenWidth * padd),
    child: Row(
      children: [
        Image.asset(img),
        SizedBox(
          width: SizeConfig.screenWidth * 0.05,
        ),
        Text(
          text1,
          style: TextStyle(
            fontSize: 18,
            color: ColorsX.greyText,
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    ),
  );
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
