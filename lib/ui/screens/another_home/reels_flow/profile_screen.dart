import 'package:flutter/material.dart';
import 'package:flutter_basic/core/constants/app_assets.dart';
import 'package:flutter_basic/core/constants/colors.dart';
import 'package:flutter_basic/core/constants/text_style.dart';
import 'package:flutter_basic/ui/custom_widgets/circleIconButton.dart';
import 'package:flutter_basic/ui/custom_widgets/custom_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int sanan = 0;

  onClick(index) {
    sanan = index;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          CircularIconButton(imagePath: AppAssets.reelShare, onTap: () {}),
          CircularIconButton(imagePath: AppAssets.reelNotifi, onTap: () {}),
        ],
        leading: CircularIconButton(
          imagePath: AppAssets.reelBackBtn,
          onTap: () {},
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage(AppAssets.profile),
              ),
            ),
            10.verticalSpace,
            Text('Daniel Brown', style: style18_600),
            5.verticalSpace,
            Text(
              '@hostellife_dan',
              style: style12_400.copyWith(color: blackColor.withOpacity(0.8)),
            ),
            20.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      '1K',
                      style: style12_500.copyWith(
                        fontSize: 14,
                        color: blackColor,
                      ),
                    ),
                    3.verticalSpace,
                    Text(
                      'Following',
                      style: style12_400.copyWith(
                        color: blackColor.withOpacity(0.65),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '10K',
                      style: style12_500.copyWith(
                        fontSize: 14,
                        color: blackColor,
                      ),
                    ),
                    3.verticalSpace,
                    Text(
                      'Followers',
                      style: style12_400.copyWith(
                        color: blackColor.withOpacity(0.65),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '30K',
                      style: style12_500.copyWith(
                        fontSize: 14,
                        color: blackColor,
                      ),
                    ),
                    3.verticalSpace,
                    Text(
                      'Likes',
                      style: style12_400.copyWith(
                        color: blackColor.withOpacity(0.65),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            5.verticalSpace,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70),
              child: Row(
                children: [
                  Expanded(
                    child: CustomButton(
                      onTap: () {},
                      text: 'Follow',
                      borderRadius: 12,
                      height: 40,
                    ),
                  ),
                  3.horizontalSpace,
                  Expanded(
                    child: CustomButton(
                      onTap: () {
                        onClick(1);
                      },
                      text: 'Message',
                      borderRadius: 12,
                      height: 40,
                    ),
                  ),
                ],
              ),
            ),
            20.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircularIconButton(
                  imagePath: AppAssets.myVids,
                  onTap: () {
                    onClick(0);
                  },
                  iconColor: sanan == 0 ? Colors.grey : blackColor,
                ),
                CircularIconButton(
                  imagePath: AppAssets.repostVid,
                  onTap: () {
                    onClick(1);
                  },
                  iconColor: sanan == 1 ? Colors.grey : blackColor,
                ),
              ],
            ),
            5.verticalSpace,

            sanan == 0
                ? GridView.builder(
                    itemCount: 12,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 2,
                      mainAxisSpacing: 1,
                      crossAxisCount: 3,
                      childAspectRatio: 0.8,
                    ),

                    itemBuilder: (context, int index) {
                      return Container(
                        height: 300,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(AppAssets.room1),
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  )
                : GridView.builder(
                    itemCount: 12,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 2,
                      mainAxisSpacing: 1,
                      crossAxisCount: 3,
                      childAspectRatio: 0.8,
                    ),

                    itemBuilder: (context, int index) {
                      return Container(
                        height: 300,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(AppAssets.reel),
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  ),
          ],
        ),
      ),
    );
  }
}
