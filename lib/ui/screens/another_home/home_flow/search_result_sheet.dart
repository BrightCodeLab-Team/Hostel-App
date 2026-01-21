// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_basic/core/constants/app_assets.dart';
import 'package:flutter_basic/core/constants/auth_text_field.dart';
import 'package:flutter_basic/core/constants/colors.dart';
import 'package:flutter_basic/core/constants/text_style.dart';
import 'package:flutter_basic/ui/custom_widgets/custom_back_button.dart';
import 'package:flutter_basic/ui/custom_widgets/custom_button.dart';
import 'package:flutter_basic/ui/custom_widgets/hotel_details.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchResultScreen extends StatefulWidget {
  const SearchResultScreen({super.key});

  @override
  State<SearchResultScreen> createState() => _SearchResultScreenState();
}

class _SearchResultScreenState extends State<SearchResultScreen> {
  RangeValues values = const RangeValues(10, 90);
  int? selectedIndex;

  void _tapSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      constraints: const BoxConstraints(minHeight: 500),
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
              setModalState(() => values = newValues);
            },
          ),

          const Row(children: [Text('0'), Spacer(), Text('\$100')]),

          30.verticalSpace,
          Text('Ratings', style: style18_600),
          10.verticalSpace,

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(5, (index) {
              return _ratings(
                rating: '${5 - index}',
                color: selectedIndex == index ? primaryColor : whiteColor,
                textColor: selectedIndex == index ? whiteColor : blackColor,
                onTap: () {
                  setModalState(() => selectedIndex = index);
                },
              );
            }),
          ),

          40.verticalSpace,
          Text(
            'Gender-specific hostels',
            style: style18_500.copyWith(color: blackColor),
          ),
          30.verticalSpace,

          SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.6,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: CustomButton(onTap: () {}, text: 'Male'),
                ),
                10.horizontalSpace,
                Expanded(
                  child: CustomButton(onTap: () {}, text: 'Female'),
                ),
              ],
            ),
          ),
          30.verticalSpace,
          SizedBox(
            width: MediaQuery.sizeOf(context).width * 10.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Expanded(
                  child: CustomButton(onTap: () {}, text: 'Reset'),
                ),
                10.horizontalSpace,
                Expanded(
                  child: CustomButton(onTap: () {}, text: 'Apply'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        leading: CustomBackButton(),
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

            Expanded(
              child: ListView.builder(
                itemCount: 3,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
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
        border: Border.all(color: blackColor.withOpacity(0.25)),
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
