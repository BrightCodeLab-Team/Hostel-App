import 'package:flutter/material.dart';
import 'package:flutter_basic/core/constants/colors.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12),
      child: GestureDetector(
        onTap: () => Get.back(),
        child: Container(
          height: 20,
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
    );
  }
}
