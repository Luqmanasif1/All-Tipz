import 'package:flutter/material.dart';
import '/styles/app_color.dart';
import '/utils/size_config.dart';
import 'package:country_code_picker/country_code_picker.dart';
import '/Screen/widget/numericpad.dart';
import '/Screen/Signup/signup_screen.dart';
import '/Screen/Signup/setpassword.dart';

class VerifyMail extends StatefulWidget {
  @override
  State<VerifyMail> createState() => _VerifyMailState();
}

class _VerifyMailState extends State<VerifyMail> {
  String code = '';
  String _coding = '';
  bool _On_Editing = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsX.AppBluecolor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(top: SizeConfig.screenHeight * 0.02),
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
                        "Verify Your Email",
                        style: TextStyle(
                          wordSpacing: 1,
                          fontSize: 24,
                          color: ColorsX.white,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Expanded(child: Container()),
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
                  child: RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        const TextSpan(
                          text: "Enter 4 digit code sent to  ",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                        TextSpan(
                          text: ' ',
                          style: const TextStyle(
                            fontSize: 20,
                            color: Colors.orangeAccent,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.05,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    _VerifyCode(
                      code.length > 0 ? code.substring(0, 1) : '',
                    ),
                    _VerifyCode(
                      code.length > 1 ? code.substring(1, 2) : '',
                    ),
                    _VerifyCode(
                      code.length > 2 ? code.substring(2, 3) : '',
                    ),
                    _VerifyCode(
                      code.length > 3 ? code.substring(3, 4) : '',
                    )
                  ],
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Didn't receive any code? ",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (ctx) => SignUp()));
                      },
                      child: const Text(
                        "Resend Code",
                        style: TextStyle(
                          fontSize: 18,
                          color: const Color.fromRGBO(74, 167, 253, 1),
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (ctx) => Password()),
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
                SizedBox(
                  height: SizeConfig.screenHeight * 0.03,
                ),
                NumericPad(
                  Numberselect: (value) {
                    setState(
                      () {
                        if (value == -1) {
                          code = code.substring(0, code.length - 1);
                        } else {
                          if (code.length < 4) {
                            code = code + value.toString();
                          }
                        }
                      },
                    );
                  },
                )
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
    child: CountryCodePicker(
      initialSelection: 'United States',
      showCountryOnly: false,
      enabled: true,
      hideMainText: false,
      showOnlyCountryWhenClosed: false,
      textStyle: const TextStyle(
        color: ColorsX.white,
        fontSize: 18,
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

Widget _VerifyCode(String codeNumber) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 8),
    child: SizedBox(
      height: 50,
      width: 50,
      child: Container(
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Colors.white, width: 3),
          ),
        ),
        child: Text(
          codeNumber,
          style: const TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    ),
  );
}
