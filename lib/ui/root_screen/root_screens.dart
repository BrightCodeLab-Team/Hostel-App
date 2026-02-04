import 'package:flutter/material.dart';
import 'package:flutter_basic/core/constants/colors.dart';
import 'package:flutter_basic/core/constants/text_style.dart';

class RootScreens extends StatefulWidget {
  const RootScreens({super.key});

  @override
  State<RootScreens> createState() => _RootScreensState();
}

class _RootScreensState extends State<RootScreens> {
  int myIndex = 0;
  List<Widget> widgetList = [
    Text('Home', style: style12_600),
    Text('Reel', style: style12_600),
    Text('Add', style: style12_600),
    Text('Chat', style: style12_600),
    Text('Profile', style: style12_600),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
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
