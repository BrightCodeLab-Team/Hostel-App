import 'package:flutter/material.dart';
import 'package:flutter_basic/core/constants/colors.dart';
import 'package:flutter_basic/core/constants/text_style.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback? onTap;
  final String? text;
  const CustomButton({super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(200),
        ),
        height: 50,
        width: double.infinity,

        child: Center(
          child: Text(
            text ?? 'text required',
            style: style12_600.copyWith(fontSize: 14, color: whiteColor),
          ),
        ),
      ),
    );
  }
}
