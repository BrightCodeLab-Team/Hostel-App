import 'package:flutter/material.dart';
import 'package:flutter_basic/core/constants/app_assets.dart';
import 'package:flutter_basic/core/constants/text_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShareToProfile extends StatelessWidget {
  final String image;
  final String text;
  final VoidCallback onPresses;
  const ShareToProfile({
    super.key,
    required this.image,
    required this.text,
    required this.onPresses,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(AppAssets.car1),
            ),
          ),
          10.verticalSpace,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Text('Zayn_Flows', style: style12_400),
          ),
        ],
      ),
    );
  }
}
