import 'package:flutter/material.dart';
import 'package:flutter_basic/core/constants/app_assets.dart';
import 'package:flutter_basic/core/constants/colors.dart';
import 'package:flutter_basic/core/constants/text_style.dart';
import 'package:flutter_basic/ui/custom_widgets/share_to_profile.dart';
import 'package:flutter_basic/ui/custom_widgets/share_to_socials.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReelScreen extends StatefulWidget {
  const ReelScreen({super.key});

  @override
  State<ReelScreen> createState() => _ReelScreenState();
}

class _ReelScreenState extends State<ReelScreen> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppAssets.reel),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20, bottom: 30, left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Daniel Brown',
                        style: style12_600.copyWith(color: whiteColor),
                      ),
                      5.verticalSpace,
                      Text(
                        '“New city, new hostel,new friends ✨”',
                        style: style12_600.copyWith(color: whiteColor),
                      ),
                      5.verticalSpace,
                      Text(
                        '#HostelLife #StudentTravel',
                        style: style12_600.copyWith(
                          fontFamily: 'Semibold',
                          color: blackColor,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage(AppAssets.profile),
                          ),
                          CircleAvatar(
                            radius: 10,
                            backgroundColor: primaryColor,
                            child: Icon(
                              Icons.add,
                              size: 16,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      30.verticalSpace,

                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isLiked = !isLiked;
                          });
                        },
                        child: Image.asset(
                          AppAssets.like,
                          scale: 4,
                          color: isLiked ? Colors.red : Colors.white,
                        ),
                      ),
                      4.verticalSpace,
                      Text(
                        isLiked ? '12.1k ' : '12k',
                        style: style12_600.copyWith(color: whiteColor),
                      ),
                      30.verticalSpace,
                      Image.asset(AppAssets.comment, scale: 4),
                      4.verticalSpace,
                      Text(
                        '2k',
                        style: style12_600.copyWith(color: whiteColor),
                      ),
                      30.verticalSpace,

                      ///
                      /// share button
                      ///
                      GestureDetector(
                        onTap: () {
                          showModalBottomSheet(
                            context: context,

                            backgroundColor: whiteColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(20),
                              ),
                            ),
                            builder: (context) {
                              return _buildShareBottomSheet();
                            },
                          );
                        },
                        child: Image.asset(AppAssets.share, scale: 4),
                      ),
                      4.verticalSpace,
                      Text(
                        '1k',
                        style: style12_600.copyWith(color: whiteColor),
                      ),
                      30.verticalSpace,
                      CircleAvatar(
                        backgroundImage: AssetImage(AppAssets.profile),
                        minRadius: 25,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  ///
  /// bottom sheet de ki ba ze coding kom
  ///

  Widget _buildShareBottomSheet() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Row(
            children: [
              Image.asset(
                AppAssets.searchIcon,
                scale: 1,
                width: 60,
                height: 80,
              ),
              Spacer(),
              Image.asset(AppAssets.crossIcon, scale: 1, width: 60, height: 80),
            ],
          ),
        ),
        50.verticalSpace,
        SizedBox(
          height: 100,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return ShareToProfile(
                image: AppAssets.locat,
                text: 'sanan',
                onPresses: () {},
              );
            },
          ),
        ),
        20.verticalSpace,
        Divider(color: Colors.grey),

        20.verticalSpace,
        Row(
          children: [
            SocialAppsShare(
              image: AppAssets.whatsapp,
              text: 'whatsapp',
              onPresses: () {},
            ),
            SocialAppsShare(
              image: AppAssets.whatsapp,
              text: 'whatsapp',
              onPresses: () {},
            ),
            SocialAppsShare(
              image: AppAssets.whatsapp,
              text: 'whatsapp',
              onPresses: () {},
            ),
            SocialAppsShare(
              image: AppAssets.whatsapp,
              text: 'whatsapp',
              onPresses: () {},
            ),
          ],
        ),
      ],
    );
  }
}
