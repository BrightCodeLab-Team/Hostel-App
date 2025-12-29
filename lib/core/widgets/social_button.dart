import 'package:flutter/material.dart';
import 'package:flutter_basic/core/constants/app_assets.dart';
import 'package:flutter_basic/core/constants/colors.dart';
import 'package:flutter_basic/core/constants/text_style.dart';

class SocialButton extends StatelessWidget {
  final VoidCallback? onTap;
  final String? text;
  final String? image;
  const SocialButton({
    super.key,
    required this.onTap,
    required this.text,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(99),
          color: lightGreyColor,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                image ?? AppAssets().googleIcon,
                height: 20,
                width: 20,
                scale: 4,
              ),
              SizedBox(width: 5),
              Text(text ?? '', style: style12_600),
            ],
          ),
        ),
      ),
    );
  }
}
