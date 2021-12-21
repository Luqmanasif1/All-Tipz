import 'package:flutter/material.dart';
import '/images/images.dart';
import '/styles/app_color.dart';
import '/utils/size_config.dart';

class NewPassword extends StatefulWidget {
  static const routename = '/N-Pass';
  const NewPassword({Key? key}) : super(key: key);

  @override
  _NewPasswordState createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsX.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(
                left: SizeConfig.screenWidth * 0.05,
                right: SizeConfig.screenWidth * 0.05),
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
                      padding: EdgeInsets.only(left: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: ColorsX.lightGrey,
                          width: 2.5,
                        ),
                        color: ColorsX.white,
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_back_ios,
                        ),
                      ),
                    ),
                    const Spacer(),
                    const Text(
                      "Create new Password",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Expanded(child: Container()),
                  ],
                ),
                _myTextWidget("Your password must be different", 0xFFAAAAAA,
                    FontWeight.w400, 20, 30, 0, 0),
                _myTextWidget("from previous passwords", 0xFFAAAAAA,
                    FontWeight.w400, 20, 2, 0, 0),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.03,
                ),
                TextFormField(
                  obscureText: _isObscure,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon: Icon(
                        _isObscure ? Icons.visibility_off : Icons.visibility,
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
                _myTextWidget("Must be at least 8 characters", 0xFFAAAAAA,
                    FontWeight.w400, 15, 15, 0, 0),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.04,
                ),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Confirm Password',
                  ),
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.02,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Center(
                    child: Container(
                      margin: EdgeInsets.only(
                        top: SizeConfig.screenHeight * 0.03,
                      ),
                      child: const Center(
                        child: Text(
                          "Reset",
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
                  height: 100,
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
