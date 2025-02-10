import 'package:alltipz/images/images.dart';
import 'package:alltipz/Screen/Transfer/walleyconfirmation.dart';
import 'package:alltipz/styles/app_color.dart';
import 'package:alltipz/utils/size_config.dart';
import 'package:flutter/material.dart';

class TransferWally extends StatefulWidget {
  const TransferWally({Key? key}) : super(key: key);

  @override
  _TransferWallyState createState() => _TransferWallyState();
}

class _TransferWallyState extends State<TransferWally> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsX.secreenBackGroundColor,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(
            top: SizeConfig.screenHeight * 0.06,
          ),
          child: Column(
            children: [
              _appBar1("Transfer with AllTipz", FontWeight.w600, 20.0),
              SizedBox(
                height: 20,
              ),
              _expandedWidget(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _appBar1(
    String _title,
    FontWeight _fontweight,
    _size,
  ) {
    return Padding(
      padding: EdgeInsets.only(
        left: SizeConfig.screenWidth * 0.03,
        right: SizeConfig.screenWidth * 0.03,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              width: 50,
              height: 50,
              padding: EdgeInsets.only(left: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: ColorsX.smallTextColor,
                  width: 2.5,
                ),
                color: ColorsX.AppBluecolor,
              ),
              child: Padding(
                padding: EdgeInsets.only(left: SizeConfig.screenWidth * 0.01),
                child: Icon(
                  Icons.arrow_back_ios,
                  color: ColorsX.whiteColor,
                ),
              ),
            ),
          ),
          Text(
            '$_title',
            style: TextStyle(
              fontSize: _size,
              fontWeight: _fontweight,
              color: ColorsX.whiteColor,
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              width: 50,
              height: 50,
              padding: EdgeInsets.only(left: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: ColorsX.smallTextColor,
                  width: 2.5,
                ),
                color: ColorsX.AppBluecolor,
              ),
              child: Icon(
                Icons.search,
                color: ColorsX.whiteColor,
                size: 30,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _expandedWidget() {
    return Container(
      width: SizeConfig.screenWidth * 100,
      padding: EdgeInsets.only(
        left: SizeConfig.screenWidth * 0.04,
        right: SizeConfig.screenWidth * 0.04,
        top: SizeConfig.screenHeight * 0.03,
      ),
      decoration: BoxDecoration(
        color: ColorsX.whiteColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _textWidget('Contact'),
          SizedBox(
            height: SizeConfig.screenHeight * 0.02,
          ),
          _rowWidget(),
          SizedBox(
            height: SizeConfig.screenHeight * 0.03,
          ),
          _textRowWidget(),
          SizedBox(
            height: SizeConfig.screenHeight * 0.02,
          ),
          _picWidget(women2, "Dianna Russel", "(480) 555-0103"),
          Divider(
            color: ColorsX.smallTextColor,
            thickness: 0.7,
          ),
          _picWidget(cb, "Cody Banks", "(480) 555-0103"),
          // SizedBox(Ban
          //   height: SizeConfig.screenHeight * 0.02,
          // ),
          SizedBox(
            height: SizeConfig.screenHeight * 0.01,
          ),
          _textWidget('Set amount'),
          SizedBox(
            height: SizeConfig.screenHeight * 0.009,
          ),
          _textWidget1('How much would you like to transfer?', 0xFF8F92A1),
          SizedBox(
            height: SizeConfig.screenHeight * 0.02,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              '\$130.00',
              style: TextStyle(
                // fontweight:     FontWeight.w700,
                //     18.0,
                //     0xFF030319,
                fontWeight: FontWeight.w700,
                fontSize: 24.0,
                color: Color(0xFF030319),
              ),
            ),
          ),
          Divider(
            color: ColorsX.smallTextColor,
            thickness: 0.7,
          ),
          SizedBox(
            height: SizeConfig.screenHeight * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                  padding: EdgeInsets.all(
                    SizeConfig.screenHeight * 0.02,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blue[100],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: _tWidget('\$100.00')),
              Container(
                  padding: EdgeInsets.all(
                    SizeConfig.screenHeight * 0.02,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blue[100],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: _tWidget('\$250.00')),
              Container(
                  padding: EdgeInsets.all(
                    SizeConfig.screenHeight * 0.02,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blue[100],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: _tWidget('\$500.00')),
            ],
          ),
          SizedBox(
            height: SizeConfig.screenHeight * 0.018,
          ),
          _button(),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  Widget _tWidget(String _text) {
    return Text(
      _text,
      style: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 14.0,
        color: ColorsX.AppBluecolor,
      ),
    );
  }

  Widget _textWidget1(String _title, _color) {
    return _text(
      '$_title',
      FontWeight.w400,
      18.0,
      0xFF8F92A1,
    );
  }

  Widget _picWidget(String img, String text, String number) {
    return Padding(
      padding: EdgeInsets.only(
          top: SizeConfig.screenHeight * 0.01,
          bottom: SizeConfig.screenHeight * 0.01),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(img),
            radius: 30,
          ),
          SizedBox(width: SizeConfig.screenWidth * 0.04),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                number,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: ColorsX.smallTextColor),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _textWidget(String _title) {
    return _text(
      '$_title',
      FontWeight.w700,
      21.0,
      0xFF030319,
    );
  }

  Widget _textRowWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _text(
          'Recent',
          FontWeight.w700,
          20.0,
          0xFF030319,
        ),
        _text(
          'See all contact',
          FontWeight.w400,
          15.0,
          0xFF4AA7FD,
        ),
      ],
    );
  }

  Widget _text(
    String _text,
    FontWeight _fontweight,
    _size,
    _colors,
  ) {
    return Text(
      _text,
      style: TextStyle(
        fontSize: _size,
        fontWeight: _fontweight,
        color: Color(_colors),
      ),
    );
  }

  Widget _rowWidget() {
    return Row(
      children: [
        _TextForm(),
        SizedBox(
          width: SizeConfig.screenWidth * 0.05,
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.all(SizeConfig.screenWidth * 0.03),
            decoration: BoxDecoration(
              color: const Color(0xFFFFAE58),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Icon(
              Icons.add,
              color: ColorsX.whiteColor,
            ),
          ),
        )
      ],
    );
  }

  Widget _TextForm() {
    return Expanded(
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Enter phone number',
        ),
      ),
    );
  }

  Widget _button() {
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => WallyConformation(),
          ),
        );
      },
      child: Center(
        child: Container(
          height: SizeConfig.screenHeight * 0.07,
          width: SizeConfig.screenWidth,
          decoration: BoxDecoration(
            color: Color(0xFF4AA7FD),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Align(
            alignment: Alignment.center,
            child: Text(
              'Continue',
              style: TextStyle(
                  color: Color(0xFFFFFFFFFF),
                  fontWeight: FontWeight.w500,
                  fontSize: 16.0),
            ),
          ),
        ),
      ),
    );
  }
}
