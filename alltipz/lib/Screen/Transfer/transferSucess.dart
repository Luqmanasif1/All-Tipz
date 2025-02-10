import 'package:alltipz/Screen/Transfer/bankConfirmation.dart';
import 'package:alltipz/images/images.dart';
import 'package:alltipz/styles/color.dart';
import 'package:alltipz/utils/size_config.dart';
import 'package:flutter/material.dart';
import '/Screen/TopUP/selectmethod.dart';

class TransferSuccess extends StatefulWidget {
  const TransferSuccess({Key? key}) : super(key: key);

  @override
  _TransferSuccessState createState() => _TransferSuccessState();
}

class _TransferSuccessState extends State<TransferSuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsX.secreenBackGroundColor,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: EdgeInsets.only(
            left: SizeConfig.screenWidth * 0.04,
            right: SizeConfig.screenWidth * 0.04,
            top: SizeConfig.screenHeight * 0.07,
          ),
          child: Column(
            children: [
              _appbarTitle(),
              SizedBox(
                height: SizeConfig.screenHeight * 0.03,
              ),
              Container(
                width: SizeConfig.screenWidth,
                height: SizeConfig.screenHeight * 0.8,
                padding: EdgeInsets.only(
                  left: SizeConfig.screenWidth * 0.05,
                  right: SizeConfig.screenWidth * 0.05,
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(ticket),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      congratulation,
                      height: SizeConfig.screenHeight * 0.2,
                      width: SizeConfig.screenWidth * 0.4,
                    ),
                    // SizedBox(
                    //   height: SizeConfig.screenHeight * 0.02,
                    // ),
                    _textWidget(
                      'Transfer Success',
                      FontWeight.w700,
                      0xFF030319,
                      24.0,
                    ),
                    SizedBox(
                      height: SizeConfig.screenHeight * 0.02,
                    ),
                    _textWidget(
                      'Your payment for Starbucks Coffee has been successfully done',
                      FontWeight.w400,
                      0xFF8F92A1,
                      16.0,
                    ),
                    SizedBox(
                      height: SizeConfig.screenHeight * 0.02,
                    ),
                    _textWidget(
                      'Total Payment',
                      FontWeight.w400,
                      0xFF8F92A1,
                      16.0,
                    ),
                    SizedBox(
                      height: SizeConfig.screenHeight * 0.01,
                    ),
                    _textWidget(
                      '\$130.00',
                      FontWeight.w700,
                      0xFF030319,
                      32.0,
                    ),
                    SizedBox(
                      height: SizeConfig.screenHeight * 0.04,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: _textWidget(
                        'Recipient',
                        FontWeight.w500,
                        0xFF8F92A1,
                        17.0,
                      ),
                    ),
                    SizedBox(
                      height: SizeConfig.screenHeight * 0.02,
                    ),
                    Container(
                      height: SizeConfig.screenHeight * 0.1,
                      width: SizeConfig.screenWidth,
                      padding: EdgeInsets.only(
                        left: SizeConfig.screenWidth * 0.03,
                        right: SizeConfig.screenWidth * 0.03,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xFFF2F2F2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Image(
                            image: AssetImage(
                              women1,
                            ),
                          ),
                          SizedBox(
                            width: SizeConfig.screenWidth * 0.05,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _textWidget(
                                'Dianna Russell',
                                FontWeight.w700,
                                0xFF030319,
                                18.0,
                              ),
                              _textWidget(
                                '5510-1094-1013 . 3:02 PM',
                                FontWeight.w400,
                                0xFF8F92A1,
                                14.0,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: SizeConfig.screenHeight * 0.03,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SelectMethod(),
                          ),
                        );
                      },
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (ctx) => SelectMethod()));
                        },
                        child: Container(
                          width: SizeConfig.screenWidth,
                          height: SizeConfig.screenHeight * 0.07,
                          // padding: EdgeInsets.all(
                          //   SizeConfig.screenHeight * 0.03,
                          // ),
                          decoration: BoxDecoration(
                            color: ColorsX.buttonBackGroundColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Done',
                              style: TextStyle(
                                color: ColorsX.whiteColor,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: SizeConfig.screenHeight * 0.03,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: _textWidget(
                        'Transfer more money',
                        FontWeight.w500,
                        0xFF0053A0,
                        16.0,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _textWidget(
    String _text,
    FontWeight _fontweight,
    _color,
    _size,
  ) {
    return Text(
      _text,
      style: TextStyle(
        color: Color(_color),
        fontSize: _size,
        fontWeight: _fontweight,
      ),
    );
  }

  Widget _appbarTitle() {
    return Align(
      alignment: Alignment.center,
      child: Text(
        'Transfer Receipt',
        style: TextStyle(
          color: ColorsX.whiteColor,
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}

class DolDurmaClipper extends CustomClipper<Path> {
  DolDurmaClipper({required this.top, required this.holeRadius});

  final double top;
  final double holeRadius;

  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, 0);

    // path.lineTo(size.width / 2, 0.0);
    // path.lineTo(size.width, size.height);
    // path.lineTo(0.0, size.width);
    // path.lineTo(size.width / 2, 0);

    // path.lineTo(0.0, size.height - 20);
    // path.lineTo(size.width, size.height - 40);
    // path.lineTo(size.width, 0.0);
    //   ..moveTo(0, 0)
    //   ..lineTo(size.height/2- top - holeRadius, 0.0)
    //   ..arcToPoint(
    //     Offset(size.width - top, 0),
    //     clockwise: false,
    //     radius: Radius.circular(1),
    //   )
    //   ..lineTo(size.height/2, 0.0)
    //   ..lineTo(size.height, size.height)
    //   ..lineTo(size.height - top, size.height)
    //   ..arcToPoint(
    //     Offset(size.width - top - holeRadius, size.height),
    //     clockwise: false,
    //     radius: Radius.circular(1),
    //   );

    // path.lineTo(0.0, size.height);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(DolDurmaClipper oldClipper) => true;
}
