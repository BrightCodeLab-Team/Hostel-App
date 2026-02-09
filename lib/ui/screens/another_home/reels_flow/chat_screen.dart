import 'package:flutter/material.dart';
import 'package:flutter_basic/core/constants/app_assets.dart';
import 'package:flutter_basic/core/constants/text_style.dart';
import 'package:flutter_basic/ui/custom_widgets/circleIconButton.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            CircleAvatar(
              radius: 30,

              backgroundImage: AssetImage(AppAssets.profile),
            ),
            5.horizontalSpace,
            Text(
              'Daniel Brown',
              style: style18_600.copyWith(fontFamily: 'semibold'),
            ),
          ],
        ),
        actions: [
          CircularIconButton(icon: Icons.flag_outlined, onTap: () {}),
          CircularIconButton(icon: Icons.more_horiz_sharp, onTap: () {}),
        ],
        leading: CircularIconButton(
          imagePath: AppAssets.reelBackBtn,
          onTap: () {},
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [Center(child: Text('Today 5:12pm', style: style12_400))],
      ),
    );
  }
}
