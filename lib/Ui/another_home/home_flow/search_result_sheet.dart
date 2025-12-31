import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_basic/core/constants/auth_text_field.dart';
import 'package:flutter_basic/core/constants/colors.dart';
import 'package:flutter_basic/core/constants/text_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchResultScreen extends StatefulWidget {
  const SearchResultScreen({super.key});

  @override
  State<SearchResultScreen> createState() => _SearchResultScreenState();
}

class _SearchResultScreenState extends State<SearchResultScreen> {
  RangeValues values = RangeValues(10, 90);

  void _tapSheet(BuildContext context) {
    showModalBottomSheet(context: context, builder: (context) => _build());
  }

  @override
  Widget _build() => Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      RangeSlider(
        values: values,
        min: 0,
        max: 100,
        onChanged: (newValues) => setState(() => this.values = newValues),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Container(
            height: 10,
            width: 20,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: blackColor.withOpacity(0.4)),
              color: Colors.white,
            ),
            child: Center(
              child: Icon(Icons.arrow_back_ios_new_rounded, color: blackColor),
            ),
          ),
        ),
        title: TextFormField(
          decoration: fieldDecoration.copyWith(
            hintText: "Search",
            prefixIcon: Icon(Icons.search, size: 25.sp),
            suffixIcon: GestureDetector(
              onTap: () => _tapSheet(context),
              child: Icon(Icons.filter_alt, size: 25.sp),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            30.verticalSpace,
            Row(
              children: [
                Icon(Icons.search),
                5.horizontalSpace,
                Text('StayEase Hostel', style: style12_600),
                Spacer(),
                Icon(Icons.arrow_outward_rounded),
              ],
            ),
            30.verticalSpace,
            Row(
              children: [
                Icon(Icons.search),
                5.horizontalSpace,
                Text('StayEase Hostel', style: style12_600),
                Spacer(),
                Icon(Icons.arrow_outward_rounded),
              ],
            ),
            30.verticalSpace,
            Row(
              children: [
                Icon(Icons.search),
                5.horizontalSpace,
                Text('StayZone Hostel', style: style12_600),
                Spacer(),
                Icon(Icons.arrow_outward_rounded),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
