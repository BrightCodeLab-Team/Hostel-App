// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_basic/core/constants/colors.dart';
import 'package:flutter_basic/core/constants/text_style.dart';
import 'package:flutter_basic/ui/screens/another_home/home_flow/home_detail_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class CustomHotelDetailsCard extends StatelessWidget {
  final String image;
  final String rating;
  final String title;
  final String location;
  final String price;
  final String availableSeats;

  const CustomHotelDetailsCard({
    super.key,
    required this.image,
    required this.rating,
    required this.title,
    required this.location,
    required this.price,
    required this.availableSeats,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(DetailScreen());
        // Navigate to detail screen
      },
      child: Container(
        margin: EdgeInsets.only(right: 10, bottom: 3, top: 3),
        width: 257,
        decoration: BoxDecoration(
          color: whiteColor,

          boxShadow: [
            BoxShadow(
              offset: Offset(0, 0),
              blurRadius: 4,
              spreadRadius: 0,

              color: blackColor.withOpacity(0.25),
            ),
          ],
          borderRadius: BorderRadius.circular(28),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Image Section
            Container(
              height: 148.h,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(28),
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: [
                  /// Rating
                  Positioned(
                    top: 12,
                    left: 12,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: whiteColor.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.star, color: Colors.orange, size: 14.sp),
                          SizedBox(width: 4.w),
                          Text(rating.toString(), style: style12_400),
                        ],
                      ),
                    ),
                  ),

                  /// Favourite
                  Positioned(
                    top: 16,
                    right: 12,
                    child: Container(
                      height: 32,
                      width: 32,
                      decoration: BoxDecoration(
                        color: whiteColor.withOpacity(0.5),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.favorite_outline_rounded,
                        color: whiteColor,
                        size: 18.sp,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            15.verticalSpace,

            /// Title & Price
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                children: [
                  Text(title, style: style12_800.copyWith(fontSize: 16)),
                  const Spacer(),
                  Text(
                    "\$ $price",
                    style: style12_600.copyWith(
                      fontSize: 14,
                      color: primaryColor,
                    ),
                  ),
                ],
              ),
            ),

            6.verticalSpace,

            /// Location
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                children: [
                  Icon(Icons.location_on, color: blackColor, size: 15.sp),
                  SizedBox(width: 4.w),
                  Text(location, style: style12_400.copyWith(fontSize: 10)),
                ],
              ),
            ),

            6.verticalSpace,

            /// Seats
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                children: [
                  Text(
                    'Available seats:',
                    style: style12_400.copyWith(fontSize: 10),
                  ),
                  SizedBox(width: 4.w),
                  Text(availableSeats.toString(), style: style12_400),
                ],
              ),
            ),

            15.verticalSpace,
          ],
        ),
      ),
    );
  }
}
