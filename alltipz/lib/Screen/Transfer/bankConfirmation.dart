import '/Screen/Transfer/transfervalley.dart';
import 'package:alltipz/images/images.dart';

import 'package:alltipz/styles/app_color.dart';
import 'package:alltipz/utils/size_config.dart';
import 'package:flutter/material.dart';

class BankConformation extends StatefulWidget {
  const BankConformation({Key? key}) : super(key: key);

  @override
  _BankConformationState createState() => _BankConformationState();
}

class _BankConformationState extends State<BankConformation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsX.secreenBackGroundColor,
      body: SingleChildScrollView(
        child: Container(
          height: SizeConfig.screenHeight,
          width: SizeConfig.screenWidth,
          child: Column(
            children: [
              _appBar('Confirm Transfer', FontWeight.w700, 22.0),
              SizedBox(
                height: SizeConfig.screenHeight * 0.02,
              ),
              _picWidget(),
              SizedBox(
                height: SizeConfig.screenHeight * 0.01,
              ),
              _containerWidget(),
              SizedBox(
                height: SizeConfig.screenHeight * 0.03,
              ),
              _choseCardContainer(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _appBar(
    String _title,
    FontWeight _fontweight,
    _size,
  ) {
    return Container(
      margin: EdgeInsets.only(
        top: SizeConfig.screenHeight * 0.06,
        left: SizeConfig.screenWidth * 0.04,
        right: SizeConfig.screenWidth * 0.04,
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
                borderRadius: BorderRadius.circular(10),
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
          Spacer(),
          Text(
            '$_title',
            style: TextStyle(
              fontSize: _size,
              fontWeight: _fontweight,
              color: ColorsX.whiteColor,
            ),
          ),
          Expanded(child: Container()),
        ],
      ),
    );
  }

  Widget _picWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(
            women2,
          ),
          radius: 40,
        ),
        SizedBox(
          height: SizeConfig.screenHeight * 0.04,
        ),
        _textPicWidget(
          'Dianna Russell',
          FontWeight.w700,
          24.0,
          0xFFFFFFFF,
        ),
        SizedBox(
          height: SizeConfig.screenHeight * 0.02,
        ),
        _textPicWidget(
          '5150-1094-1012',
          FontWeight.w500,
          14.0,
          0xFFFFAE58,
        ),
        SizedBox(
          height: SizeConfig.screenHeight * 0.01,
        ),
        _textPicWidget(
          'Transfer on Dec 2, 2020',
          FontWeight.w500,
          14.0,
          0xFFFFAE58,
        ),
        SizedBox(
          height: SizeConfig.screenHeight * 0.03,
        ),
        _textPicWidget(
          '\$10.00',
          FontWeight.w700,
          48.0,
          0xFFFFFFFF,
        ),
      ],
    );
  }

  Widget _textPicWidget(String _text, FontWeight _fontweight, _size, _color) {
    return Text(
      '$_text',
      style: TextStyle(
          color: Color(_color), fontSize: _size, fontWeight: _fontweight),
    );
  }

  Widget _containerWidget() {
    return Container(
      // height: SizeConfig.screenHeight*0.07,
      width: SizeConfig.screenWidth,
      margin: EdgeInsets.only(
        left: SizeConfig.screenWidth * 0.03,
        right: SizeConfig.screenWidth * 0.03,
      ),
      decoration: BoxDecoration(
        color: ColorsX.AppBluecolor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: RichText(
        text: TextSpan(
          children: [
            WidgetSpan(
              child: Icon(
                Icons.info,
                size: 25,
                color: ColorsX.white,
              ),
            ),
            TextSpan(
              text: "Transfer made to bank account could take a few minutes",
              style: TextStyle(fontSize: 16, color: ColorsX.white),
            ),
          ],
        ),
      ),
    );
  }

  Widget _choseCardContainer() {
    return Expanded(
      child: Container(
        width: SizeConfig.screenWidth * 100,
        padding: EdgeInsets.only(
          top: SizeConfig.screenHeight * 0.05,
          left: SizeConfig.screenWidth * 0.05,
          right: SizeConfig.screenWidth * 0.05,
        ),
        decoration: BoxDecoration(
          color: Color(0xFFF2F2F2),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Choose Cards',
              style: TextStyle(
                  color: Color(0xFF030319),
                  fontWeight: FontWeight.w700,
                  fontSize: 20.0),
            ),
            Container(
              width: SizeConfig.screenWidth,
              decoration: BoxDecoration(
                color: Color(0xFFF2F2F2),
                borderRadius: BorderRadius.circular(15),
              ),
              child: ListTile(
                leading: Container(
                  height: SizeConfig.screenHeight * 0.08,
                  width: SizeConfig.screenWidth * 0.12,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/masterCard.png'),
                        fit: BoxFit.contain,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                ),
                title: Text(
                  'Mastercard',
                  style: TextStyle(
                    color: Color(0xFF030319),
                    fontSize: 18.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                subtitle: Text(
                  '1956*** ***2356',
                  style: TextStyle(
                    color: Color(0xFF8F92A1),
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                trailing: Icon(Icons.keyboard_arrow_down),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => TransferWally()),
                );
              },
              child: Container(
                width: SizeConfig.screenWidth,
                margin: EdgeInsets.only(top: SizeConfig.screenHeight * 0.01),
                padding: EdgeInsets.all(
                  SizeConfig.screenHeight * 0.03,
                ),
                decoration: BoxDecoration(
                  color: Color(0xFF4AA7FD),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Transfer Money',
                    style: TextStyle(
                        color: Color(0xFFFFFFFFFF),
                        fontWeight: FontWeight.w500,
                        fontSize: 16.0),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
