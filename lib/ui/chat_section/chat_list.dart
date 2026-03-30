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
        title: Text('Chat', style: style18_400),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
              decoration: fieldDecoration.copyWith(
                prefixIcon: Image.asset(AppAssets.search, scale: 4),
                hintText: 'Search',
              ),
            ),
            20.verticalSpace,
            // Expanded for ListView.builder
            Expanded(
              child: ListView.builder(
                itemCount: 9, // call chatTile 7 times
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      chatTile(),
                      2.verticalSpace,
                      Divider(
                        thickness: 1,
                        color: Colors.black.withOpacity(0.2),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
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
  }
}
