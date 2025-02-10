import 'package:flutter/material.dart';
import '/images/images.dart';
import '/styles/app_color.dart';
import '/utils/size_config.dart';
import '/Screen/SignScreen/Rest_Password.dart';
import '/Screen/Signup/signup_screen.dart';

import '/Screen/home/home.dart';

class LogIn extends StatefulWidget {
  static const routename = "/LogIn";
  const LogIn({Key? key}) : super(key: key);

  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
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
              children: [
                Center(
                  child: Image.asset(
                    splashscreen,
                    color: ColorsX.AppBluecolor,
                    height: 80,
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
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon: Icon(
                        _isObscure ? Icons.visibility : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(
                          () {
                            _isObscure = !_isObscure;
                          },
                        );
                      },
                    ),
                    border: UnderlineInputBorder(),
                    labelText: 'Password',
                  ),
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.03,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed(RestPassword.routename);
                  },
                  child: const Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      "Forget Password?",
                      style: TextStyle(
                        fontSize: 16,
                        color: ColorsX.AppBluecolor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed(Home.routename);
                  },
                  child: Container(
                    margin: EdgeInsets.only(
                      top: SizeConfig.screenHeight * 0.03,
                    ),
                    child: const Center(
                      child: Text(
                        "Log in",
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
                SizedBox(
                  height: SizeConfig.screenHeight * 0.04,
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "New to wpay?",
                        style: TextStyle(
                          fontSize: 17,
                          color: ColorsX.lightGreyText,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed(SignUp.routename);
                        },
                        child: const Text(
                          "Sign Up",
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
                  height: SizeConfig.screenHeight * 0.06,
                ),
                const Center(
                  child: Text(
                    "or login with",
                    style: TextStyle(
                      fontSize: 18,
                      color: ColorsX.lightGreyText,
                    ),
                  ),
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.05,
                ),
                Container(
                  height: SizeConfig.screenHeight / 9,
                  width: SizeConfig.screenWidth,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _NavigateButton(fb, "Facebook"),
                      _NavigateButton(google, "Google"),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _NavigateButton(String img, String label) {
  return Container(
    height: SizeConfig.screenHeight / 12,
    width: SizeConfig.screenWidth / 2.5,
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
        SizedBox(
          width: SizeConfig.screenWidth * 0.02,
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    ),
  );
}
