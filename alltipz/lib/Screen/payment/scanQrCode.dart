import 'package:alltipz/screen/payment/summry_Transaction.dart';
import '/styles/app_color.dart';
import 'package:alltipz/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class ScanQRCode extends StatefulWidget {
  const ScanQRCode({Key? key}) : super(key: key);

  @override
  _ScanQRCodeState createState() => _ScanQRCodeState();
}

class _ScanQRCodeState extends State<ScanQRCode> {
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
              _appBar('Scan to Pay', FontWeight.w700, 22.0),
              _mobleWidget(),
              GestureDetector(
                onTap: () {
                  _settingModalBottomSheet(context);
                  print('Ahmad');
                },
                child: Container(
                  height: SizeConfig.screenHeight * 0.1,
                  width: SizeConfig.screenWidth,
                  color: Colors.white,
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: SizeConfig.screenHeight * 0.01,
                      width: SizeConfig.screenWidth * 0.10,
                      decoration: BoxDecoration(
                        color: ColorsX.smallTextColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
              )
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
        bottom: SizeConfig.screenHeight * 0.05,
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

  Widget _mobleWidget() {
    return Expanded(
      child: Container(
          width: SizeConfig.screenWidth,
          margin: EdgeInsets.only(
            left: SizeConfig.screenWidth * 0.2,
            right: SizeConfig.screenWidth * 0.2,
            // top: SizeConfig.screenHeight * 0.3,
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/mobile.png'),
              fit: BoxFit.contain,
            ),
          )),
    );
  }
}

void _settingModalBottomSheet(context) {
  showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30),
        ),
      ),
      isScrollControlled: true,
      isDismissible: true,
      context: context,
      builder: (BuildContext bc) {
        return Container(
          height: SizeConfig.screenHeight * 0.3,
          width: SizeConfig.screenWidth,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
            ),
          ),
          padding: EdgeInsets.only(
            top: SizeConfig.screenHeight * 0.05,
            left: SizeConfig.screenWidth * 0.05,
            right: SizeConfig.screenWidth * 0.05,
          ),
          child: new Wrap(
            children: <Widget>[
              Text('Tip with QR Code',
                  style: TextStyle(
                    color: ColorsX.boldTextColor,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w700,
                  )),
              SizedBox(
                height: SizeConfig.screenHeight * 0.05,
              ),
              Text(
                  'Hold the code inside the frame, it will be scanned automatically',
                  style: TextStyle(
                    color: ColorsX.smallTextColor,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400,
                  )),
            ],
          ),
        );
      });
}
