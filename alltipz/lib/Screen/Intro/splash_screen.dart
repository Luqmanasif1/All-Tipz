import 'package:flutter/material.dart';
import '/styles/app_color.dart';
import '/images/images.dart';
import '/utils/size_config.dart';
import '/Screen/Intro/boarding1.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigateTologin();
  }

  _navigateTologin() async {
    await Future.delayed(
      const Duration(
        milliseconds: 3000,
      ),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => Boardingone(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: ColorsX.AppBluecolor,
      body: Center(
        child: Image.asset(splashscreen),
      ),
    );
  }
}
