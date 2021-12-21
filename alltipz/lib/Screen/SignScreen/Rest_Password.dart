import 'package:flutter/material.dart';
import '/images/images.dart';
import '/styles/app_color.dart';
import '/utils/size_config.dart';
import '/Screen/SignScreen/New_Password.dart';

class RestPassword extends StatefulWidget {
  static const routename = '/R-Pass';
  const RestPassword({Key? key}) : super(key: key);

  @override
  _RestPasswordState createState() => _RestPasswordState();
}

class _RestPasswordState extends State<RestPassword> {
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
                      "Reset Password",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Expanded(child: Container()),
                  ],
                ),
                _myTextWidget("Enter your email and we send you a ", 0xFFAAAAAA,
                    FontWeight.w400, 20, 30, 0, 0),
                _myTextWidget("link to reset your password", 0xFFAAAAAA,
                    FontWeight.w400, 20, 2, 0, 0),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.03,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Your email',
                  ),
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.15,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed(NewPassword.routename);
                  },
                  child: Container(
                    margin: EdgeInsets.only(
                      top: SizeConfig.screenHeight * 0.03,
                    ),
                    child: const Center(
                      child: Text(
                        "Send",
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
                  height: 100,
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
