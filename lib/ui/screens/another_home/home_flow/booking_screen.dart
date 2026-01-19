import 'package:flutter/material.dart';
import 'package:flutter_basic/core/constants/app_assets.dart';
import 'package:flutter_basic/core/constants/colors.dart';

import 'package:flutter_basic/core/constants/text_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Booking',
          style: style12_600.copyWith(
            color: primaryColor,
            fontSize: 24,
            letterSpacing: -2,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 100,
                  height: 90,
                  child: Image.asset(AppAssets.room5, fit: BoxFit.cover),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),

                Column(
                  children: [
                    Text(
                      'Bunk Mate',
                      style: style24_600.copyWith(color: primaryColor),
                    ),
                    5.verticalSpace,
                    Row(
                      children: [
                        Icon(Icons.location_on, color: blackColor),
                        5.horizontalSpace,
                        Text('Gulshan Block 5, Karachi', style: style12_400),
                      ],
                    ),
                    10.verticalSpace,
                    Row(
                      children: [
                        Text('4.9'),
                        40.horizontalSpace,
                        Text(
                          '\$ 48',
                          style: style12_600.copyWith(color: primaryColor),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),

            30.verticalSpace,
            Text(
              'Select Seats',
              style: style20_500.copyWith(color: blackColor),
            ),
            seats('2 Seats'),
            20.verticalSpace,
            seats('3 Seats'),
            20.verticalSpace,
            seats('4 Seats'),
            20.verticalSpace,
            20.verticalSpace,
            seats('5 Seats'),
          ],
        ),
      ),
    );
  }

  Row seats(String text) {
    return Row(
      children: [
        10.verticalSpace,
        Text(text),
        Spacer(),
        Icon(Icons.check_circle_outline_rounded, color: blackColor),
      ],
    );
  }
}
