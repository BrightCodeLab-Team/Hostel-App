// ignore_for_file: deprecated_member_use, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_basic/core/constants/app_assets.dart';
import 'package:flutter_basic/core/constants/colors.dart';
import 'package:flutter_basic/core/constants/strings.dart';
import 'package:flutter_basic/core/constants/text_style.dart';
import 'package:flutter_rating/flutter_rating.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailsData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          30.verticalSpace,

          Divider(
            color: blackColor.withOpacity(0.25),
            thickness: 2,
            height: 10,
          ),
          30.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text("4.5"),

                  StarRating(
                    rating: 4.5,
                    allowHalfRating: false,
                    color: starColor,
                  ),
                ],
              ),
              Container(height: 30, width: 0.5, color: greyColor),
              Column(children: [Text("Guest"), Text("favourite")]),
              Container(height: 30, width: 0.5, color: greyColor),
              Column(children: [Text("20"), Text("Reviews")]),
            ],
          ),
          30.verticalSpace,
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 20.0,
                backgroundImage: AssetImage(AppAssets.img1),
              ),
              12.horizontalSpace,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Hosteed by Omar Rahman',
                    style: style12_400.copyWith(fontFamily: 'Noto Sans'),
                  ),
                  10.verticalSpace,
                  Text(
                    'Email: omarrahman88@hotmail.com',
                    style: style12_400.copyWith(fontFamily: 'Noto Sans'),
                  ),
                ],
              ),
            ],
          ),
          25.verticalSpace,
          Divider(
            color: blackColor.withOpacity(0.25),
            thickness: 2,
            height: 10,
          ),
          20.verticalSpace,
          Row(
            children: [
              Text('Room', style: style18_600),
              Spacer(),
              Text('See All', style: style12_500.copyWith(color: redColor)),
            ],
          ),
          20.verticalSpace,
          SizedBox(
            height: 100,
            child: ListView.builder(
              itemCount: 3,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  width: 180,
                  height: 150,
                  margin: EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage(AppAssets.room1),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
          ),
          50.verticalSpace,

          Divider(
            color: blackColor.withOpacity(0.25),
            thickness: 2,
            height: 10,
          ),
          25.verticalSpace,
          Text(
            'This hostel offers',
            style: style18_600.copyWith(fontFamily: 'inter'),
          ),
          15.verticalSpace,
          Row(
            children: [
              Image.asset(AppAssets.electricity, scale: 4),

              10.horizontalSpace,
              Text('24 hours electricity', style: style12_500),
              15.verticalSpace,
            ],
          ),
          15.verticalSpace,
          Row(
            children: [
              Image.asset(AppAssets.water, scale: 4),
              10.horizontalSpace,
              Text('Heat & Could water', style: style12_500),
              15.verticalSpace,
            ],
          ),
          15.verticalSpace,
          Row(
            children: [
              Image.asset(AppAssets.wifi, scale: 4),

              10.horizontalSpace,
              Text('Wifi', style: style12_500),
              15.verticalSpace,
            ],
          ),
          15.verticalSpace,
          Row(
            children: [
              Image.asset(AppAssets.bathroom, scale: 4),
              10.horizontalSpace,
              Text('Bathroom', style: style12_500),
              15.verticalSpace,
            ],
          ),
          100.verticalSpace,
        ],
      ),
    );
  }
}
