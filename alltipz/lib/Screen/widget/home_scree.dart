import '/images/images.dart';
import '/styles/app_color.dart';
import '/utils/size_config.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Container(
            margin: EdgeInsets.only(
              left: SizeConfig.screenWidth * 0.03,
              top: SizeConfig.screenWidth * 0.03,
            ),
            child: _appBarWidget1()),
        actions: [
          Align(
            alignment: Alignment.centerRight,
            child: Container(
                margin: EdgeInsets.only(
                  right: SizeConfig.screenWidth * 0.03,
                  top: SizeConfig.screenWidth * 0.03,
                ),
                child: _appBarWidget2()),
          )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: EdgeInsets.only(
            left: SizeConfig.screenWidth * 0.03,
            right: SizeConfig.screenWidth * 0.03,
          ),
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.screenHeight * 0.04,
              ),
              _nameWidget(),
              SizedBox(
                height: SizeConfig.screenHeight * 0.04,
              ),
              _blueBoxWidget(),
              SizedBox(
                height: SizeConfig.screenHeight * 0.04,
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: _nameTextWidget(
                      'Recent Tips', FontWeight.w700, 20.0, 0xFF030319)),
              SizedBox(
                height: SizeConfig.screenHeight * 0.02,
              ),
              _recentTipzWidget(
                  'women1.png',
                  'Starbucks Coffee',
                  'Dec 2, 2020 . 3:09 PM',
                  '-\$156.00',
                  FontWeight.w700,
                  FontWeight.w400,
                  FontWeight.w700,
                  0xFF030319,
                  0xFF8F92A1,
                  0xFF030319,
                  16.0,
                  12.0,
                  16.0),
              SizedBox(
                height: SizeConfig.screenHeight * 0.02,
              ),
              _recentTipzWidget(
                  'women2.png',
                  'Netflix Subscription',
                  'Dec 11, 2020 . 10:02 AM',
                  '-\$87.00',
                  FontWeight.w700,
                  FontWeight.w400,
                  FontWeight.w700,
                  0xFF030319,
                  0xFF8F92A1,
                  0xFF030319,
                  16.0,
                  12.0,
                  16.0),
              SizedBox(
                height: SizeConfig.screenHeight * 0.02,
              ),
              _recentTipzWidget(
                  'women1.png',
                  'Starbucks Coffee',
                  'Dec 2, 2020 . 3:09 PM',
                  '-\$156.00',
                  FontWeight.w700,
                  FontWeight.w400,
                  FontWeight.w700,
                  0xFF030319,
                  0xFF8F92A1,
                  0xFF030319,
                  16.0,
                  12.0,
                  16.0),
              SizedBox(
                height: SizeConfig.screenHeight * 0.02,
              ),
              _recentTipzWidget(
                  'women2.png',
                  'Netflix Subscription',
                  'Dec 11, 2020 . 10:02 AM',
                  '-\$87.00',
                  FontWeight.w700,
                  FontWeight.w400,
                  FontWeight.w700,
                  0xFF030319,
                  0xFF8F92A1,
                  0xFF030319,
                  16.0,
                  12.0,
                  16.0),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _appBarWidget1() {
  return GestureDetector(
    onTap: () {},
    child: Container(
      height: SizeConfig.screenHeight * 0.10,
      width: SizeConfig.screenWidth * 0.10,
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(
          logo,
        ),
        fit: BoxFit.contain,
      )),
    ),
  );
}

Widget _appBarWidget2() {
  return Container(
    decoration: BoxDecoration(
      border: Border.all(
        color: ColorsX.smallTextColor,
        width: 1,
      ),
      borderRadius: BorderRadius.circular(10),
    ),
    child: Align(
      alignment: Alignment.center,
      child: IconButton(
        onPressed: () {},
        icon: Icon(Icons.settings),
        color: ColorsX.boldTextColor,
      ),
    ),
  );
}

Widget _nameWidget() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _nameTextWidget('Hello Andre,', FontWeight.w700, 18.0, 0xFF030319),
          SizedBox(
            height: SizeConfig.screenHeight * 0.01,
          ),
          _nameTextWidget(
              'Your available balance', FontWeight.w300, 14.0, 0xFF8F92A1),
        ],
      ),
      _nameTextWidget('\$15,901', FontWeight.w700, 28.0, 0xFF030319),
    ],
  );
}

Widget _nameTextWidget(
    String _text, FontWeight _fontWeight, _fontSize, _color) {
  return Text(
    '$_text',
    style: TextStyle(
      color: Color(_color),
      fontWeight: _fontWeight,
      fontSize: _fontSize,
    ),
  );
}

Widget _blueBoxWidget() {
  return Container(
    padding: EdgeInsets.all(SizeConfig.screenHeight * 0.04),
    decoration: BoxDecoration(
      color: ColorsX.buttonBackGroundColor,
      borderRadius: BorderRadius.circular(15),
    ),
    child: Align(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _picWidget('arrowIcon.png', 0xFFFFFFFF),
              SizedBox(
                height: SizeConfig.screenHeight * 0.02,
              ),
              _nameTextWidget('Tip', FontWeight.w500, 14.0, 0xFFFFFFFF),
            ],
          ),
          VerticalDivider(color: Colors.black),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _picWidget('topup.png', 0xFFFFFFFF),
              SizedBox(
                height: SizeConfig.screenHeight * 0.02,
              ),
              _nameTextWidget('Top Up', FontWeight.w500, 14.0, 0xFFFFFFFF),
            ],
          ),
          VerticalDivider(
            color: Colors.black,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _picWidget('history.png', 0xFFFFFFFF),
              SizedBox(
                height: SizeConfig.screenHeight * 0.02,
              ),
              _nameTextWidget('History', FontWeight.w500, 14.0, 0xFFFFFFFF),
            ],
          ),
        ],
      ),
    ),
  );
}

Widget _picWidget(String _image, _color) {
  return ImageIcon(
    AssetImage("assets/images/$_image"),
    size: 30,
    color: Color(_color),
  );
}

Widget _picWidget1(
  String _image,
) {
  return Container(
    height: SizeConfig.screenHeight * 0.08,
    width: SizeConfig.screenWidth * 0.12,
    decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/$_image'),
          fit: BoxFit.contain,
        ),
        borderRadius: BorderRadius.circular(10)),
  );
}

Widget _recentTipzWidget(
  String _pic,
  String _title,
  String _title1,
  String _title3,
  FontWeight _fontweightTitle1,
  FontWeight _fontweightTitle2,
  FontWeight _fontweightTitle13,
  _colorTitle1,
  _colorTitle2,
  _colorTitle3,
  _fontSizeTitle1,
  _fontSizeTitle2,
  _fontSizeTitle3,
) {
  return Row(
    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      _picWidget1('$_pic'),
      SizedBox(
        width: SizeConfig.screenHeight * 0.03,
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _nameTextWidget(
              '$_title', _fontweightTitle1, _fontSizeTitle1, _colorTitle1),
          SizedBox(
            width: SizeConfig.screenHeight * 0.02,
          ),
          _nameTextWidget(
              '$_title1', _fontweightTitle2, _fontSizeTitle2, _colorTitle2),
        ],
      ),
      Expanded(child: Container()),
      _nameTextWidget(
          '$_title3', _fontweightTitle13, _fontSizeTitle3, _colorTitle3),
    ],
  );
}
