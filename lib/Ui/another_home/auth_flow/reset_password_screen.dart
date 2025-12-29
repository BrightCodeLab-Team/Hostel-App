import 'package:flutter/material.dart';
import 'package:flutter_basic/core/constants/auth_text_field.dart';
import 'package:flutter_basic/core/constants/colors.dart';
import 'package:flutter_basic/core/constants/text_style.dart';
import 'package:flutter_basic/core/widgets/custom_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 130,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15),
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
      ),
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
            CustomButton(onTap: () {}, text: 'Update Password'),
            80.verticalSpace,
          ],
        ),
      ),
    );
  }
}
