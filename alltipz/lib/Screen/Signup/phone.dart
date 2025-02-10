import 'package:flutter/material.dart';
import '/styles/app_color.dart';
import '/utils/size_config.dart';
import 'package:country_code_picker/country_code_picker.dart';
import '/Screen/widget/numericpad.dart';
import '/Screen/Signup/verifyphone.dart';

class Phone extends StatefulWidget {
  static const routename = "/Phone";
  const Phone({Key? key}) : super(key: key);

  @override
  State<Phone> createState() => _PhoneState();
}

class _PhoneState extends State<Phone> {
  String PhoneNumber = '';
  String C_Code = '';

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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        padding: EdgeInsets.only(left: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: ColorsX.lightGrey,
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
                        "Continue with phone",
                        style: TextStyle(
                          fontSize: 22,
                          color: ColorsX.white,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Expanded(child: Container()),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: SizeConfig.screenWidth * 0.05,
                      right: SizeConfig.screenWidth * 0.05),
                  child: _myTextWidget(
                      "Enter your phone number to receive a pin code to sign up  ",
                      0xFFFFFFFF,
                      FontWeight.w400,
                      20,
                      15,
                      0,
                      0),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.03),
                Padding(
                  padding: EdgeInsets.only(
                      left: SizeConfig.screenWidth * 0.05,
                      right: SizeConfig.screenWidth * 0.05),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      _CodePicker(),
                      SizedBox(
                        width: SizeConfig.screenWidth * 0.05,
                      ),
                      Expanded(
                        child: Container(
                          height: SizeConfig.screenHeight / 10,
                          width: SizeConfig.screenWidth / 2,
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                width: 2,
                                color: ColorsX.white,
                              ),
                            ),
                          ),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              PhoneNumber.length == 0
                                  ? "(480)555-0103"
                                  : PhoneNumber,
                              style: const TextStyle(
                                fontSize: 20,
                                color: ColorsX.white,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.0),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (ctx) => VerifyPhone(
                            Phone: PhoneNumber,
                          ),
                        ),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(
                        top: SizeConfig.screenHeight * 0.03,
                      ),
                      child: const Center(
                        child: Text(
                          "Continue",
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
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                NumericPad(
                  Numberselect: (value) {
                    setState(
                      () {
                        if (value == -1) {
                          PhoneNumber =
                              PhoneNumber.substring(0, PhoneNumber.length - 1);
                        } else {
                          PhoneNumber = PhoneNumber + value.toString();
                        }
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _CodePicker() {
  return Container(
    height: 65,
    width: 140,
    decoration: const BoxDecoration(
      border: Border(
        bottom: BorderSide(
          width: 2,
          color: ColorsX.white,
        ),
      ),
    ),
    child: Align(
      alignment: Alignment.centerLeft,
      child: CountryCodePicker(
        initialSelection: 'United States',
        showCountryOnly: false,
        enabled: true,
        hideMainText: false,
        alignLeft: true,
        showOnlyCountryWhenClosed: false,
        textStyle: const TextStyle(
          color: ColorsX.white,
          fontSize: 18,
        ),
      ),
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
