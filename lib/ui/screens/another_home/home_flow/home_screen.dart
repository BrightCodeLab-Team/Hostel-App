import 'package:flutter/material.dart';
import 'package:flutter_basic/core/constants/app_assets.dart';
import 'package:flutter_basic/core/constants/auth_text_field.dart';
import 'package:flutter_basic/core/constants/colors.dart';
import 'package:flutter_basic/core/constants/text_style.dart';
import 'package:flutter_basic/ui/custom_widgets/hotel_details.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  final List screen = ['screen 1'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        toolbarHeight: 80,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: CircleAvatar(backgroundImage: AssetImage(AppAssets.car1)),
        ),
        title: Row(
          children: [
            Icon(Icons.location_on, color: blackColor, size: 15.sp),
            SizedBox(width: 5.w),
            Text(
              "Gulshan Block 5, Karachi",
              style: style12_400.copyWith(fontSize: 10.sp),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: Container(
              height: 50.h,
              width: 50.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: greyColor.withOpacity(0.2),
                border: Border.all(color: greyColor, width: 2),
              ),
              child: Icon(
                Icons.notifications_none,
                color: blackColor,
                size: 30.sp,
              ),
            ),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: fieldDecoration.copyWith(
                  hintText: "Search",
                  prefixIcon: Icon(Icons.search, size: 25.sp),
                  suffixIcon: Icon(Icons.filter_alt, size: 25.sp),
                ),
              ),

              20.verticalSpace,

              Row(
                children: [
                  Text('Near me', style: style20_600),
                  const Spacer(),
                  Text(
                    'See All',
                    style: style12_400.copyWith(color: primaryColor),
                  ),
                ],
              ),

              10.verticalSpace,

              SizedBox(
                height: 254,

                child: ListView.builder(
                  itemCount: 5,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return CustomHotelDetailsCard(
                      image: AppAssets.hotel1,
                      rating: '4.0',
                      title: 'Generator Hostel',
                      location: 'Gulshan Block 5, Karachi',
                      price: '\$ 48',
                      availableSeats: '24',
                    );
                  },
                ),
              ),
              20.verticalSpace,
              Row(
                children: [
                  Text(
                    ' Popular',
                    style: style20_600.copyWith(color: blackColor),
                  ),
                  Spacer(),
                  Text(
                    ' See All',
                    style: style12_400.copyWith(color: primaryColor),
                  ),
                ],
              ),
              20.verticalSpace,

              SizedBox(
                height: 254,

                child: ListView.builder(
                  itemCount: 5,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return CustomHotelDetailsCard(
                      image: AppAssets.hotel1,
                      rating: '4.0',
                      title: 'Generator Hostel',
                      location: 'Gulshan Block 5, Karachi',
                      price: '\$ 48',
                      availableSeats: '24',
                    );
                  },
                ),
              ),
              20.verticalSpace,
              Row(
                children: [
                  Text(
                    ' Cheapest',
                    style: style18_600.copyWith(color: blackColor),
                  ),
                  Spacer(),
                  Text(
                    ' See All',
                    style: style12_400.copyWith(color: primaryColor),
                  ),
                ],
              ),
              SizedBox(
                height: 254,

                child: ListView.builder(
                  itemCount: 5,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return CustomHotelDetailsCard(
                      image: AppAssets.hotel1,
                      rating: '4.0',
                      title: 'Generator Hostel',
                      location: 'Gulshan Block 5, Karachi',
                      price: '\$ 48',
                      availableSeats: '24',
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
