import 'package:flutter/material.dart';
import '/styles/app_color.dart';
import '/utils/size_config.dart';

class NumericPad extends StatelessWidget {
  final Function(int) Numberselect;
  NumericPad({required this.Numberselect});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40.0),
          topRight: Radius.circular(40.0),
        ),
      ),
      width: SizeConfig.screenWidth * 100,
      height: SizeConfig.screenHeight / 2,
      child: Column(
        children: [
          Container(
            height: SizeConfig.screenHeight * 0.11,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _BuildNumber(1),
                VerticalDivider(),
                _BuildNumber(2),
                VerticalDivider(),
                _BuildNumber(3),
                VerticalDivider(),
              ],
            ),
          ),
          Divider(
            thickness: 0.5,
          ),
          Container(
            height: SizeConfig.screenHeight * 0.11,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _BuildNumber(4),
                VerticalDivider(),
                _BuildNumber(5),
                VerticalDivider(),
                _BuildNumber(6),
                VerticalDivider(),
              ],
            ),
          ),
          Divider(
            thickness: 0.5,
          ),
          Container(
            height: SizeConfig.screenHeight * 0.11,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _BuildNumber(7),
                VerticalDivider(),
                _BuildNumber(8),
                VerticalDivider(),
                _BuildNumber(9),
                VerticalDivider(),
              ],
            ),
          ),
          Divider(
            thickness: 0.5,
          ),
          Container(
            height: SizeConfig.screenHeight * 0.09,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: GestureDetector(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        decoration: const BoxDecoration(
                          color: ColorsX.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            ".",
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                VerticalDivider(),
                _BuildNumber(0),
                VerticalDivider(),
                BackSpace(),
                VerticalDivider(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _BuildNumber(int Num) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          Numberselect(Num);
        },
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            decoration: const BoxDecoration(
              color: ColorsX.white,
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: Center(
              child: Text(
                Num.toString(),
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget BackSpace() {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          Numberselect(-1);
        },
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Container(
            decoration: const BoxDecoration(
              color: ColorsX.white,
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            child: const Center(
              child: Icon(
                Icons.backspace,
                size: 28,
                color: Color(0xFF1F1F1F),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget Build_Space() {
    return Expanded(child: Container());
  }
}
