// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_basic/core/constants/app_assets.dart';
import 'package:flutter_basic/core/constants/auth_text_field.dart';
import 'package:flutter_basic/core/constants/colors.dart';
import 'package:flutter_basic/core/constants/text_style.dart';
import 'package:flutter_basic/core/widgets/custom_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchResultScreen extends StatefulWidget {
  const SearchResultScreen({super.key});

  @override
  State<SearchResultScreen> createState() => _SearchResultScreenState();
}

class _SearchResultScreenState extends State<SearchResultScreen> {
  RangeValues values = const RangeValues(10, 90);
  int? selectedIndex;

  /// ✅ ONLY ONE setState here
  void onClick(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  void _tapSheet(BuildContext context) {
    showModalBottomSheet(
      constraints: BoxConstraints(minHeight: 500),
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setModalState) {
            return _buildBottomSheet(setModalState);
          },
        );
      },
    );
  }

  Widget _buildBottomSheet(StateSetter setModalState) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Filter', style: style18_800),
          20.verticalSpace,

          Text('Price range', style: style12_600.copyWith(fontSize: 14)),
          20.verticalSpace,

          RangeSlider(
            activeColor: primaryColor,
            inactiveColor: greyColor,
            values: values,
            min: 0,
            max: 100,
            onChanged: (newValues) {
              setModalState(() {
                values = newValues;
              });
            },
          ),

          const Row(children: [Text('0'), Spacer(), Text('\$100')]),

          30.verticalSpace,
          Text('Ratings', style: style18_600),
          10.verticalSpace,

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _ratings(
                rating: '5',
                color: selectedIndex == 0 ? primaryColor : whiteColor,
                textColor: selectedIndex == 0 ? whiteColor : blackColor,
                onTap: () {
                  setModalState(() {
                    selectedIndex = 0;
                  });
                },
              ),
              _ratings(
                rating: '4',
                color: selectedIndex == 1 ? primaryColor : whiteColor,
                textColor: selectedIndex == 1 ? whiteColor : blackColor,
                onTap: () {
                  setModalState(() {
                    selectedIndex = 1;
                  });
                },
              ),
              _ratings(
                rating: '3',
                color: selectedIndex == 2 ? primaryColor : whiteColor,
                textColor: selectedIndex == 2 ? whiteColor : blackColor,
                onTap: () {
                  setModalState(() {
                    selectedIndex = 2;
                  });
                },
              ),
              _ratings(
                rating: '2',
                color: selectedIndex == 3 ? primaryColor : whiteColor,
                textColor: selectedIndex == 3 ? whiteColor : blackColor,
                onTap: () {
                  setModalState(() {
                    selectedIndex = 3;
                  });
                },
              ),
              _ratings(
                rating: '1',
                color: selectedIndex == 4 ? primaryColor : whiteColor,
                textColor: selectedIndex == 4 ? whiteColor : blackColor,
                onTap: () {
                  setModalState(() {
                    selectedIndex = 4;
                  });
                },
              ),
            ],
          ),
          40.verticalSpace,
          Text(
            'Gender-specific hostels',
            style: style18_500.copyWith(fontFamily: 'inter', color: blackColor),
          ),
          30.verticalSpace,

          // Row(
          //   children: [
          //     CustomButton(onTap: () {}, text: 'Male'),
          //     10.horizontalSpace,
          //     CustomButton(onTap: () {}, text: 'female'),
          //   ],
          // ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: blackColor.withOpacity(0.4)),
              color: Colors.white,
            ),
            child: const Center(child: Icon(Icons.arrow_back_ios_new_rounded)),
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
            _searchRow('StayEase Hostel'),
            30.verticalSpace,
            _searchRow('StayEase Hostel'),
            30.verticalSpace,
            _searchRow('StayZone Hostel'),
          ],
        ),
      ),
    );
  }

  Widget _searchRow(String title) {
    return Row(
      children: [
        const Icon(Icons.search),
        5.horizontalSpace,
        Text(title, style: style12_600),
        const Spacer(),
        const Icon(Icons.arrow_outward_rounded),
      ],
    );
  }
}

Widget _ratings({
  required String rating,
  required Color color,
  required Color textColor,
  required VoidCallback onTap,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      height: 42,
      width: 55,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(width: 1, color: blackColor.withOpacity(0.25)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(AppAssets.star, scale: 4),
          4.horizontalSpace,
          Text(rating, style: style18_400.copyWith(color: textColor)),
        ],
      ),
    ),
  );
}
