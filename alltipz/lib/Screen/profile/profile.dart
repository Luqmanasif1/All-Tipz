import 'package:alltipz/images/images.dart';

import 'package:alltipz/styles/app_color.dart';
import 'package:alltipz/utils/size_config.dart';
import 'package:flutter/material.dart';
import '/Screen/payment/scanQrCode.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            _appBarWidget1(),
            SizedBox(
              height: SizeConfig.screenHeight * 0.03,
            ),
            _otherDataWodget(),
          ],
        ),
      ),
    );
  }

  Widget _appBarWidget1() {
    return Container(
      // height: SizeConfig.screenHeight*0.4,
      padding: EdgeInsets.only(
        top: SizeConfig.screenHeight * 0.07,
        bottom: SizeConfig.screenHeight * 0.05,
        left: SizeConfig.screenWidth * 0.05,
        right: SizeConfig.screenWidth * 0.05,
      ),
      width: SizeConfig.screenWidth,
      decoration: BoxDecoration(
        color: ColorsX.secreenBackGroundColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _textWidget('My Profile', FontWeight.w700, 0xFFFFFFFF, 20.0),
              _iconWidget(),
            ],
          ),
          _appBarWidget2(),
        ],
      ),
    );
  }

  Widget _appBarWidget2() {
    return Container(
      width: SizeConfig.screenWidth,
      child: Row(
        children: [
          _picWidget(women1),
          SizedBox(
            width: SizeConfig.screenWidth * 0.03,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _textWidget('Bianca Cooper', FontWeight.w700, 0xFFFFFFFF, 24.0),
              SizedBox(
                width: SizeConfig.screenWidth * 0.06,
              ),
              _textWidget('(480) 555-0103', FontWeight.w400, 0xFFFFFFFF, 16.0),
              SizedBox(
                width: SizeConfig.screenWidth * 0.02,
              ),
              _textWidget(
                  'bianca@example.com', FontWeight.w400, 0xFFFFFFFF, 16.0),
            ],
          )
        ],
      ),
    );
  }

  Widget _picWidget(String img) {
    return Container(
      width: SizeConfig.screenWidth * 0.2,
      height: SizeConfig.screenHeight * 0.2,
      child: Image.asset(
        img,
        fit: BoxFit.contain,
      ),
    );
  }

  Widget _textWidget(
    String _title,
    FontWeight _fontweight,
    _color,
    _size,
  ) {
    return Text(
      _title,
      style: TextStyle(
        fontSize: _size,
        fontWeight: _fontweight,
        color: Color(_color),
      ),
    );
  }

  Widget _iconWidget() {
    return Container(
      padding: EdgeInsets.all(SizeConfig.screenHeight * 0.01),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: ColorsX.smallTextColor,
          )),
      child: const Align(
        alignment: Alignment.center,
        child: Icon(
          Icons.qr_code,
          color: ColorsX.white,
          size: 30,
        ),
      ),
    );
  }

  Widget _otherDataWodget() {
    return Container(
      margin: EdgeInsets.only(
        left: SizeConfig.screenWidth * 0.04,
        right: SizeConfig.screenWidth * 0.04,
      ),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              /*Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    // builder: (context) => BankConformation(),
                    ),
              );*/
            },
            child: Row(
              children: [
                _iconWidget1(Icons.person),
                SizedBox(
                  width: SizeConfig.screenWidth * 0.03,
                ),
                _textWidget(
                  'Personal',
                  FontWeight.w500,
                  0xFF030319,
                  16.0,
                ),
                Spacer(),
                _iconWidget1(Icons.arrow_forward_ios_outlined),
              ],
            ),
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.04),
          Row(
            children: [
              _iconWidget1(Icons.privacy_tip),
              SizedBox(
                width: SizeConfig.screenWidth * 0.03,
              ),
              _textWidget(
                'Privacy & Security',
                FontWeight.w500,
                0xFF030319,
                16.0,
              ),
              Spacer(),
              _iconWidget1(Icons.arrow_forward_ios_outlined),
            ],
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.04),
          Row(
            children: [
              _iconWidget1(Icons.wallet_giftcard),
              SizedBox(
                width: SizeConfig.screenWidth * 0.03,
              ),
              _textWidget(
                'Offers & Rewards',
                FontWeight.w500,
                0xFF030319,
                16.0,
              ),
              Spacer(),
              _iconWidget1(Icons.arrow_forward_ios_outlined),
            ],
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.04),
          Row(
            children: [
              _iconWidget1(Icons.help_outline_outlined),
              SizedBox(
                width: SizeConfig.screenWidth * 0.03,
              ),
              _textWidget(
                'Help',
                FontWeight.w500,
                0xFF030319,
                16.0,
              ),
              Spacer(),
              _iconWidget1(Icons.arrow_forward_ios_outlined),
            ],
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.04),
          Row(
            children: [
              _iconWidget1(Icons.login_rounded),
              SizedBox(
                width: SizeConfig.screenWidth * 0.03,
              ),
              _textWidget(
                'Logout',
                FontWeight.w500,
                0xFF030319,
                16.0,
              ),
              Spacer(),
              _iconWidget1(Icons.arrow_forward_ios_outlined),
            ],
          ),
        ],
      ),
    );
  }

  Widget _iconWidget1(_icon) {
    return Icon(
      _icon,
      color: Color(0xFF4AA7FD),
    );
  }
}
