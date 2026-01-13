import 'package:flutter/material.dart';
import 'package:flutter_basic/core/constants/app_assets.dart';
import 'package:flutter_basic/core/constants/colors.dart';
import 'package:flutter_basic/core/constants/text_style.dart';
import 'package:flutter_basic/ui/custom_widgets/custom_button.dart';
import 'package:flutter_basic/ui/screens/another_home/home_flow/details_data.dart';
import 'package:flutter_basic/ui/screens/another_home/home_flow/review_data.dart';
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

          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 348,
                  width: double.infinity,
                  alignment: Alignment.topRight,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(25),
                      bottomLeft: Radius.circular(25),
                    ),
                    image: DecorationImage(
                      image: AssetImage(AppAssets.hotelDetails),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Container(
                    margin: EdgeInsets.only(top: 20, right: 20),
                    height: 42,
                    width: 42,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: primaryColor.withOpacity(0.15),
                    ),
                    child: Icon(Icons.favorite_border, color: whiteColor),
                  ),
                ),

                10.verticalSpace,

                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                              borderRadius: BorderRadius.circular(99),
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

                      SizedBox(
                        height: 250,
                        child: TabBarView(
                          children: [
                            ///
                            /// Details
                            ///
                            DetailsData(),

                            ///
                            /// Reviews
                            ///
                            ReviewData(),
                          ],
                        ),
                      ),
                      20.verticalSpace,
                    ],
                  ),
                ), ////
              ],
            ),
          ),
        ),
        bottomSheet: Container(
          padding: EdgeInsets.all(20),
          height: 100,

          color: Colors.transparent,
          child: CustomButton(onTap: () {}, text: 'Book Now'),
        ),
      ),
    );
  }
}
