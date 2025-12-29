import 'package:flutter/material.dart';
import 'package:flutter_basic/core/constants/auth_text_field.dart';
import 'package:flutter_basic/core/constants/colors.dart';
import 'package:flutter_basic/core/constants/text_style.dart';
import 'package:flutter_basic/core/widgets/custom_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

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
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text(
              'Verify Your Email Being\nDoor Deliveries',
              style: style24_600.copyWith(
                fontWeight: FontWeight.w700,
                fontFamily: 'bold',
              ),
            ),
            SizedBox(height: 10),
            Text('Enter the 6-digit verification code', style: style12_400),
            SizedBox(height: 30),
            Text(
              'Enter OTP',
              style: style20_800.copyWith(fontWeight: FontWeight.w700),
            ),
            20.verticalSpace,
            Pinput(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              length: 6,
              defaultPinTheme: PinTheme(
                width: 42.w,
                height: 48.h,
                textStyle: style20_600.copyWith(
                  fontWeight: FontWeight.w600,
                  color: blackColor,
                ),
                decoration: BoxDecoration(
                  color: blackColor.withOpacity(0.1),
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            30.verticalSpace,
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Did not receive code', style: style12_600),
                GestureDetector(
                  onTap: () {},
                  child: Text('? Resend Code', style: style12_800),
                ),
              ],
            ),
            Spacer(),
            CustomButton(
              onTap: () {
                print('Verify button pressed');
              },
              text: 'Verify',
            ),

            80.verticalSpace,
          ],
        ),
      ),
    );
  }
}
