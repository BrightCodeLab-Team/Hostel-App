import 'package:flutter/material.dart';
import 'package:flutter_basic/core/constants/auth_text_field.dart';

import 'package:flutter_basic/core/constants/text_style.dart';
import 'package:flutter_basic/ui/custom_widgets/custom_back_button.dart';
import 'package:flutter_basic/ui/custom_widgets/custom_button.dart';
import 'package:flutter_basic/ui/screens/another_home/auth_flow/login_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 130, leading: CustomBackButton()),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 5),
            Text(
              'Reset Password to Access \nDoorstep Deliveies',
              style: style24_600.copyWith(
                fontWeight: FontWeight.w700,
                fontFamily: 'bold',
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              decoration: fieldDecoration.copyWith(
                hintText: 'Enter your new password',
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              decoration: fieldDecoration.copyWith(
                hintText: 'Confirm your new password',
              ),
            ),
            Spacer(),
            CustomButton(
              onTap: () {
                Get.to((LoginScreen()));
              },
              text: 'Update Password',
            ),
            80.verticalSpace,
          ],
        ),
      ),
    );
  }
}
