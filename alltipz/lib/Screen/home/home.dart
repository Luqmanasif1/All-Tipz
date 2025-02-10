import '/Screen/payment/scanQrCode.dart';

import '/images/images.dart';
import '/styles/app_color.dart';
import '/utils/size_config.dart';
import 'package:flutter/material.dart';
import '/Screen/profile/profile.dart';
import '/Screen/widget/home_scree.dart';
import '/Screen/TopUP/selectmethod.dart';

class Home extends StatefulWidget {
  static const routename = "/Home";
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Widget> screens = [
    HomeScreen(),
    SelectMethod(),
    Profile(),
  ];
  final PageStorageBucket bucket = PageStorageBucket();

  Widget CurrentScreen = HomeScreen();
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: PageStorage(
          bucket: bucket,
          child: CurrentScreen,
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xFFFFAE58),
          child: Image.asset(
            Button,
            height: 70,
          ),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => ScanQRCode(),
              ),
            );
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: _BottomBar(),
      ),
    );
  }

  Widget _BottomBar() {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 10,
      child: Container(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 0;
                      CurrentScreen = HomeScreen();
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.home,
                        color: _selectedIndex == 0
                            ? ColorsX.AppBluecolor
                            : Colors.grey,
                        size: 35,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: SizeConfig.screenWidth * 0.03,
                ),
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 1;
                      CurrentScreen = SelectMethod();
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.bar_chart,
                        color: _selectedIndex == 1
                            ? ColorsX.AppBluecolor
                            : Colors.grey,
                        size: 35,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 2;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.notifications,
                        color: _selectedIndex == 2
                            ? ColorsX.AppBluecolor
                            : Colors.grey,
                        size: 35,
                      ),
                    ],
                  ),
                ),
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 3;
                      CurrentScreen = Profile();
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.person,
                        color: _selectedIndex == 3
                            ? ColorsX.AppBluecolor
                            : Colors.grey,
                        size: 35,
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
