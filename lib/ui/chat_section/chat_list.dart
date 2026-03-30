import 'package:flutter/material.dart';
import 'package:flutter_basic/core/constants/app_assets.dart';
import 'package:flutter_basic/core/constants/auth_text_field.dart';
import 'package:flutter_basic/core/constants/colors.dart';
import 'package:flutter_basic/core/constants/text_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Chatscreen extends StatelessWidget {
  const Chatscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,

        bottom: PreferredSize(
          preferredSize: Size.fromHeight(40),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5.0, bottom: 4),
                  child: Text('Chat', style: style18_400),
                ),
                TextFormField(
                  decoration: fieldDecoration.copyWith(
                    prefixIcon: Image.asset(AppAssets.search, scale: 4),
                    hintText: 'Search',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: 9, // call chatTile 7 times
        itemBuilder: (context, index) {
          return Column(
            children: [
              chatTile(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Divider(
                  color: greyColor.withOpacity(0.5),
                  thickness: 0.5,
                  height: 0,
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  ListTile chatTile() {
    return ListTile(
      leading: CircleAvatar(
        radius: 40,
        backgroundImage: AssetImage(AppAssets.profile),
      ),
      title: Text(
        'Hostel Group',
        style: style18_600.copyWith(color: primaryColor),
      ),
      subtitle: Text(
        'Daniel: Save me a seat',
        style: style12_400.copyWith(color: greyColor),
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('5 min ago', style: style12_400.copyWith(color: greyColor)),
          SizedBox(height: 4),
          Container(
            decoration: BoxDecoration(
              color: primaryColor,
              shape: BoxShape.circle,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('6', style: style12_400.copyWith(color: whiteColor)),
            ),
          ),
        ],
      ),
    );
    ;
  }
}
