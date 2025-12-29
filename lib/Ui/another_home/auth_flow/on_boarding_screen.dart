import 'package:flutter/material.dart';
import 'package:flutter_basic/Ui/another_home/auth_flow/login_screen.dart';
import 'package:flutter_basic/core/constants/app_assets.dart';
import 'package:flutter_basic/core/constants/colors.dart';
import 'package:flutter_basic/core/constants/text_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;
  final List<OnBoardingScreenEntity> _onBoarding =
      OnBoardingScreenEntity.onBoardingData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: whiteColor,
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      backgroundColor: whiteColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            /// PageView (Image, Title, and Subtitle)
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.65,
              child: PageView.builder(
                controller: _pageController,
                itemCount: _onBoarding.length,
                onPageChanged: (index) {
                  setState(() => _currentIndex = index);
                },
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Image.asset(
                        _onBoarding[index].image,
                        scale: 4,
                        height: MediaQuery.sizeOf(context).height * 0.4,
                        fit: BoxFit.contain,
                      ),
                      30.verticalSpace,
                      Text(
                        _onBoarding[index].title,
                        textAlign: TextAlign.center,
                        style: style18_800.copyWith(
                          color: blackColor,
                        ), // Assuming style20_700 exists
                      ),
                      15.verticalSpace,
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Text(
                          _onBoarding[index].subTitle,
                          textAlign: TextAlign.center,
                          style: style12_500.copyWith(
                            color: blackColor.withOpacity(0.7),
                          ), // Assuming style14_400 exists
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            const Spacer(),

            /// Page Indicator
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                _onBoarding.length,
                (index) => AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  height: 8,
                  width: _currentIndex == index ? 22 : 8,
                  decoration: BoxDecoration(
                    color: _currentIndex == index
                        ? primaryColor
                        : greyColor.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            50.verticalSpace,

            /// Next Button
            Row(
              children: [
                TextButton(
                  onPressed: () {
                    // Navigate to home/login
                    Get.to(LoginScreen());
                  },
                  child: Text(
                    "Skip",
                    style: style12_800.copyWith(
                      color: blackColor.withOpacity(0.5),
                    ),
                  ),
                ),
                const Spacer(),
                ElevatedButton(
                  onPressed: () {
                    if (_currentIndex < _onBoarding.length - 1) {
                      _pageController.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    } else {
                      _currentIndex == 3
                          ? Get.to(LoginScreen())
                          : _pageController.nextPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeInOut,
                            );
                      ;
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 40,
                      vertical: 12,
                    ),
                  ),
                  child: Text(
                    "Next",
                    style: style12_800.copyWith(color: whiteColor),
                  ),
                ),
              ],
            ),
            30.verticalSpace,
          ],
        ),
      ),
    );
  }
}

class OnBoardingScreenEntity {
  final String image;
  final String title;
  final String subTitle;

  OnBoardingScreenEntity({
    required this.image,
    required this.title,
    required this.subTitle,
  });

  static List<OnBoardingScreenEntity> onBoardingData = [
    OnBoardingScreenEntity(
      image: AppAssets().onBoarding1,
      title: "Find Your Perfect Hostel",
      subTitle:
          " Get AI-powered recommendations tailoredto your budget and preferences.",
    ),
    OnBoardingScreenEntity(
      image: AppAssets().onBoarding2,
      title: "Instant Booking & Payment",
      subTitle: "Reserve your seat and pay securely in just a few taps.",
    ),
    OnBoardingScreenEntity(
      image: AppAssets().onBoarding3,
      title: " Share Reels & Build Community   ",
      subTitle:
          "Post your hostel life moments and connect with fellow students worldwide. ",
    ),
    OnBoardingScreenEntity(
      image: AppAssets().onBoarding4,
      title: "Chat & Stay Connecte",
      subTitle:
          "Message friends, join group chats, and get helpfrom hostel admins anytime.",
    ),
  ];
}
