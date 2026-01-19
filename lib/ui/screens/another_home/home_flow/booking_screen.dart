import 'package:flutter/material.dart';
import 'package:flutter_basic/core/constants/app_assets.dart';
import 'package:flutter_basic/core/constants/colors.dart';
import 'package:flutter_basic/core/constants/text_style.dart';
import 'package:flutter_basic/ui/custom_widgets/custom_button.dart';
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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
              20.verticalSpace,
              seats('2 Seats'),
              20.verticalSpace,
              seats('3 Seats'),
              20.verticalSpace,
              seats('4 Seats'),
              20.verticalSpace,
              seats('5 Seats'),

              30.verticalSpace,

              Text('Price', style: style18_600.copyWith(color: blackColor)),
              20.verticalSpace,

              20.verticalSpace,
              price('Rent', '28'),
              20.verticalSpace,
              price('Food', '20'),
              20.verticalSpace,
              price('Per Head', '48'),
              50.verticalSpace,
              Container(
                height: 60.h,
                width: 327.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: blackColor.withOpacity(0.20)),
                ),

                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                  child: Row(
                    children: [
                      Text('Enter your coupon code'),
                      Spacer(),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: primaryColor,
                          ),
                          child: Text(
                            'Apply',
                            style: style12_500.copyWith(color: whiteColor),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              50.verticalSpace,
              Row(
                children: [
                  Text('Total price', style: style18_600),
                  Spacer(),
                  Text(
                    '\$ 144',
                    style: style12_800.copyWith(
                      color: primaryColor,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              20.verticalSpace,
              CustomButton(onTap: () {}, text: 'Book Now'),
              40.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }

  Row price(String title, price) => Row(
    children: [
      Text(title, style: style12_400),
      Spacer(),
      Text(
        '\$ $price',
        style: style18_800.copyWith(
          color: primaryColor,
          fontSize: 16,
          fontFamily: 'Secular One',
        ),
      ),
      30.verticalSpace,
    ],
  );

  Row seats(String text) {
    return Row(
      children: [
        10.verticalSpace,
        Text(
          text,
          style: style12_400.copyWith(
            color: blackColor,

            fontFamily: 'Secular One',
          ),
        ),
        Spacer(),
        Icon(Icons.check_circle_outline_rounded, color: blackColor),
      ],
    );
  }
}
