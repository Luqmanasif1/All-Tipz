import 'package:flutter/material.dart';
import '/images/images.dart';
import '/styles/app_color.dart';
import '/utils/size_config.dart';
import '/Screen/SignScreen/login.dart';
import '/Screen/Signup/Name.dart';

class SignUp extends StatefulWidget {
  static const routename = "/SignUp";
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _isObscure = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsX.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(
              left: SizeConfig.screenWidth * 0.06,
              right: SizeConfig.screenWidth * 0.06,
            ),
            margin: EdgeInsets.only(top: SizeConfig.screenHeight * 0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset(
                    splashscreen,
                    color: ColorsX.AppBluecolor,
                    height: 100,
                  ),
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.05,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Your email',
                  ),
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.03,
                ),
                _myTextWidget("By creating an account, you accept our Terms",
                    0xFF757575, FontWeight.w500, 17, 5, 0, 0),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed(NameSignUp.routename);
                  },
                  child: Center(
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
                  height: SizeConfig.screenHeight * 0.04,
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Already have an account?",
                        style: TextStyle(
                          fontSize: 17,
                          color: ColorsX.lightGreyText,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed(LogIn.routename);
                        },
                        child: const Text(
                          "Login",
                          style: TextStyle(
                            fontSize: 19,
                            color: ColorsX.AppBluecolor,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.16,
                ),
                const Center(
                  child: Text(
                    "or continue with",
                    style: TextStyle(
                      fontSize: 18,
                      color: ColorsX.lightGreyText,
                    ),
                  ),
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.08,
                ),
                Row(
                  children: [
                    _NavigateButton(fb, "Facebook"),
                    Expanded(child: Container()),
                    _NavigateButton(google, "Google"),
                  ],
                ),
                const SizedBox(
                  height: 70,
                )
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

Widget _NavigateButton(String img, String label) {
  return Container(
    height: 60,
    width: 160,
    padding: EdgeInsets.only(left: 11),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      border: Border.all(color: ColorsX.lightGrey, width: 2),
      color: ColorsX.white,
    ),
    child: Row(
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: ColorsX.lightGrey, width: 2),
            color: ColorsX.lightGrey,
          ),
          child: Image.asset(
            img,
            height: 80,
          ),
        ),
        const SizedBox(
          width: 14,
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    ),
  );
}
