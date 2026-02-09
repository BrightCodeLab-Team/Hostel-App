import 'package:flutter/material.dart';
import 'package:flutter_basic/core/constants/colors.dart';
import 'package:flutter_basic/core/constants/text_style.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback? onTap;
  final String? text;
  final double borderRadius;
  final double height;

  const CustomButton({
    super.key,
    required this.onTap,
    required this.text,
    this.borderRadius = 200, // default pill shape
    this.height = 50, // default height
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: double.infinity,
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
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
