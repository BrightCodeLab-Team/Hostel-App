import 'package:flutter/material.dart';
import 'package:flutter_basic/core/constants/app_assets.dart';
import 'package:flutter_basic/core/constants/colors.dart';
import 'package:flutter_basic/core/constants/text_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: MediaQuery.removePadding(
          context: context,
          removeTop: true,
          removeLeft: true,
          removeRight: true,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 🔹 Top Image
                SizedBox(
                  width: double.infinity,
                  height: 348,
                  child: Image.asset(AppAssets.hotelDetails, fit: BoxFit.cover),
                ),

                10.verticalSpace,

                // 🔹 Details Section
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Title & Price
                      Row(
                        children: [
                          Text(
                            'Bunk Mate',
                            style: style24_600.copyWith(color: primaryColor),
                          ),
                          const Spacer(),
                          Text(
                            '\$ 48',
                            style: style24_600.copyWith(color: primaryColor),
                          ),
                        ],
                      ),

                      5.verticalSpace,

                      Row(
                        children: const [
                          Icon(Icons.location_on),
                          Text('Gulshan Block 5, Karachi'),
                        ],
                      ),

                      5.verticalSpace,

                      Row(
                        children: [
                          6.horizontalSpace,
                          Text('Available seats: 24', style: style12_400),
                          const Spacer(),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: primaryColor.withOpacity(0.2),
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 30,
                              vertical: 15,
                            ),
                            child: Row(
                              children: [
                                Image.asset(
                                  AppAssets.star,
                                  height: 20.h,
                                  width: 20.w,
                                ),
                                2.horizontalSpace,
                                Text(
                                  '4.5',
                                  style: style12_400.copyWith(
                                    color: primaryColor,
                                    fontFamily: 'Noto Sans',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                      20.verticalSpace,

                      // 🔹 Tab Bar (Updated Style)
                      TabBar(
                        indicatorColor: primaryColor,
                        labelColor: primaryColor,
                        unselectedLabelColor: Colors.grey,
                        labelStyle: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                        unselectedLabelStyle: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                        indicatorSize: TabBarIndicatorSize.tab,
                        tabs: const [
                          Tab(text: 'Details'),
                          Tab(text: 'Reviews'),
                        ],
                      ),

                      20.verticalSpace,

                      // 🔹 Description Heading
                      Text(
                        'Description',
                        style: style18_600.copyWith(color: primaryColor),
                      ),

                      10.verticalSpace,

                      // 🔹 Description Text
                      Text(
                        'StayNest Hostel offers a lively and welcoming environment for students and backpackers. With shared dorms, cozy lounges, and a fun community vibe, it’s the perfect place to meet new people while keeping your budget in check.',
                        style: style12_500.copyWith(
                          fontSize: 14,
                          color: blackColor.withOpacity(0.8),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
