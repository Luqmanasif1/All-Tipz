import 'package:alltipz/screen/payment/paymentConformation.dart';
import 'package:alltipz/styles/app_color.dart';
import 'package:alltipz/utils/size_config.dart';
import 'package:flutter/material.dart';

class SummaryTransaction extends StatefulWidget {
  const SummaryTransaction({Key? key}) : super(key: key);

  @override
  _SummaryTransactionState createState() => _SummaryTransactionState();
}

class _SummaryTransactionState extends State<SummaryTransaction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsX.secreenBackGroundColor,
      body: SingleChildScrollView(
        child: Container(
          width: SizeConfig.screenWidth,
          height: SizeConfig.screenHeight,
          child: Column(
            children: [
              _appBar('Summary Transaction', FontWeight.w700, 21.0),
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
        left: SizeConfig.screenWidth * 0.03,
        right: SizeConfig.screenWidth * 0.03,
        bottom: SizeConfig.screenHeight * 0.03,
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
          Text(
            '$_title',
            style: TextStyle(
              fontSize: _size,
              fontWeight: _fontweight,
              color: ColorsX.whiteColor,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => SummaryTransaction(),
                ),
              );
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
              child: Icon(
                Icons.contact_support_outlined,
                color: ColorsX.whiteColor,
                size: 30,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _picWidget() {
    return Container(
      child: Align(
        alignment: Alignment.center,
        child: Column(
          children: [
            Container(
              // padding:EdgeInsets.all(SizeConfig.screenWidth*0.05),
              height: SizeConfig.screenHeight * 0.13,
              width: SizeConfig.screenWidth * 0.3,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.white,
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/starbuc.png',
                    ),
                    fit: BoxFit.contain,
                  )),
            ),
            SizedBox(
              height: SizeConfig.screenHeight * 0.02,
            ),
            _textPicWidget(
              'Starbucks Coffee',
              FontWeight.w700,
              24.0,
              0xFFFFFFFF,
            ),
            SizedBox(
              height: SizeConfig.screenHeight * 0.02,
            ),
            _textPicWidget(
              'Payment on Dec 2, 2020',
              FontWeight.w500,
              14.0,
              0xFFFFAE58,
            ),
            SizedBox(
              height: SizeConfig.screenHeight * 0.05,
            ),
            _textPicWidget(
              '\$15.00',
              FontWeight.w600,
              48.0,
              0xFFFFFFFF,
            ),
          ],
        ),
      ),
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
        padding: EdgeInsets.all(
          SizeConfig.screenHeight * 0.03,
        ),
        decoration: BoxDecoration(
          color: ColorsX.AppBluecolor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              Icons.info,
              size: 24,
              color: ColorsX.white,
            ),
            SizedBox(
              width: SizeConfig.screenWidth * 0.02,
            ),
            _textPicWidget('Payment fee \$2 has been applied', FontWeight.w500,
                16.0, 0xFFFFFFFFFF)
          ],
        ));
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
                        image: AssetImage('assets/images/topizIcon.png'),
                        fit: BoxFit.contain,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                ),
                title: Text(
                  'Wallet',
                  style: TextStyle(
                    color: Color(0xFF030319),
                    fontSize: 18.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                subtitle: Text(
                  '0318-1608-2105',
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
                  MaterialPageRoute(
                    builder: (context) => PaymentConformation(),
                  ),
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
                    'Proceed to Pay',
                    style: TextStyle(
                        color: Color(0xFFFFFFFFFF),
                        fontWeight: FontWeight.w500,
                        fontSize: 16.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
