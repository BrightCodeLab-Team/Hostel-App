import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_basic/core/constants/colors.dart';
import 'package:flutter_basic/core/constants/text_style.dart';

class FilterBottomSheet extends StatefulWidget {
  const FilterBottomSheet({super.key});

  @override
  State<FilterBottomSheet> createState() => _FilterBottomSheetState();
}

class _FilterBottomSheetState extends State<FilterBottomSheet> {
  double price = 40;
  int selectedRating = 5;
  String gender = 'Male';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 24.w,
        right: 24.w,
        top: 20.h,
        bottom: MediaQuery.of(context).viewInsets.bottom + 20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Title
          Center(child: Text('Filter', style: style18_600)),

          25.verticalSpace,

          /// Price Range
          Text('Price range', style: style18_600),
          Slider(
            value: price,
            min: 0,
            max: 100,
            divisions: 100,
            label: '\$${price.toInt()}',
            activeColor: primaryColor,
            onChanged: (value) {
              setState(() => price = value);
            },
          ),

          15.verticalSpace,

          /// Distance
          Text('Distance', style: style18_600),
          10.verticalSpace,
          DropdownButtonFormField<String>(
            decoration: InputDecoration(
              hintText: 'Select city',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            items: ['New York', 'London', 'Paris']
                .map((city) => DropdownMenuItem(value: city, child: Text(city)))
                .toList(),
            onChanged: (value) {},
          ),

          20.verticalSpace,

          /// Ratings
          Text('Ratings', style: style18_600),
          10.verticalSpace,
          Row(
            children: List.generate(5, (index) {
              final rating = 5 - index;
              return Padding(
                padding: EdgeInsets.only(right: 10.w),
                child: ChoiceChip(
                  label: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(Icons.star, size: 16, color: Colors.amber),
                      Text(' $rating'),
                    ],
                  ),
                  selected: selectedRating == rating,
                  selectedColor: primaryColor,
                  onSelected: (_) {
                    setState(() => selectedRating = rating);
                  },
                ),
              );
            }),
          ),

          20.verticalSpace,

          /// Gender Specific
          Text('Gender-specific hostels', style: style18_500),
          10.verticalSpace,
          Row(
            children: [
              _genderButton('Male'),
              10.horizontalSpace,
              _genderButton('Female'),
            ],
          ),

          30.verticalSpace,

          /// Buttons
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightBlue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      price = 40;
                      selectedRating = 5;
                      gender = 'Male';
                    });
                  },
                  child: const Text('Reset'),
                ),
              ),
              15.horizontalSpace,
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Apply'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _genderButton(String value) {
    return ChoiceChip(
      label: Text(value),
      selected: gender == value,
      selectedColor: primaryColor,
      onSelected: (_) {
        setState(() => gender = value);
      },
    );
  }
}
