import 'package:flutter/material.dart';
import 'package:flutter_basic/core/constants/colors.dart';
import 'package:flutter_basic/core/constants/text_style.dart';
import 'package:flutter_basic/ui/screens/another_home/home_flow/home_screen.dart';
import 'package:flutter_basic/ui/screens/another_home/reels_flow/profile_screen.dart';
import 'package:flutter_basic/ui/screens/another_home/reels_flow/reel_screen.dart';

class RootScreens extends StatefulWidget {
  const RootScreens({super.key});

  @override
  State<RootScreens> createState() => _RootScreensState();
}

class _RootScreensState extends State<RootScreens> {
  int myIndex = 0;
  List<Widget> widgetList = [
    HomeScreen(),
    ReelScreen(), //Text('Home', style: style12_600)
    Text('Add', style: style12_600),
    Text('Chat', style: style12_600),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: widgetList[myIndex]),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        backgroundColor: whiteColor,
        onTap: (index) {
          setState(() {});
          myIndex = index;
        },
        currentIndex: myIndex,
        items: const [
          BottomNavigationBarItem(
            backgroundColor: whiteColor,
            icon: Icon(Icons.home_sharp, color: blackColor),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            backgroundColor: whiteColor,
            icon: Icon(Icons.video_library_rounded, color: blackColor),
            label: 'reel',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(Icons.add_box_outlined, color: blackColor),
            label: 'add',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(Icons.chat, color: blackColor),
            label: 'chat',
          ),
          BottomNavigationBarItem(
            backgroundColor: whiteColor,
            icon: Icon(Icons.man, color: blackColor),
            label: 'profile',
          ),
        ],
      ),
    );
  }
}
