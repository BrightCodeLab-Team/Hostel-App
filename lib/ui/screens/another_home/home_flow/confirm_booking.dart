// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_basic/core/constants/app_assets.dart';
import 'package:flutter_basic/core/constants/colors.dart';

import 'package:flutter_basic/core/constants/text_style.dart';
import 'package:flutter_basic/ui/custom_widgets/custom_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ConfirmBookingScreen extends StatelessWidget {
  const ConfirmBookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        leading: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Container(
            child: Icon(Icons.arrow_back_ios_new),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.30),
                  blurRadius: 6,
                  offset: Offset(0, 2),
                  spreadRadius: 0,
                ),
              ],
              shape: BoxShape.circle,
              color: Colors.white,
            ),
          ),
        ),
        title: Text('Booking', style: style20_600.copyWith(color: blackColor)),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: whiteColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.30),
                  blurRadius: 6,
                  offset: Offset(0, 2),
                  spreadRadius: 0,
                ),
              ],
            ),
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Bunk mate',
                      style: style12_600.copyWith(
                        color: primaryColor,
                        fontSize: 16,
                      ),
                    ),
                    Spacer(),
                    Text(
                      '\$ 48',
                      style: style12_600.copyWith(
                        color: primaryColor,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),

                Row(
                  children: [
                    Icon(Icons.location_on, color: blackColor, size: 16),
                    5.horizontalSpace,
                    Text('Gulshan Block 5, Karachi', style: style12_400),
                    Spacer(),
                    Image.asset(AppAssets.star, width: 12, height: 12),
                    1.horizontalSpace,
                    Text('4.5', style: style12_400),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),

      bottomSheet: Padding(
        padding: const EdgeInsets.only(bottom: 20.0, left: 16.0, right: 16.0),
        child: CustomButton(onTap: () {}, text: "Book Now"),
      ),
    );
  }
}
