import 'package:flutter/material.dart';
import 'package:flutter_basic/core/constants/app_assets.dart';
import 'package:flutter_basic/core/constants/auth_text_field.dart';
import 'package:flutter_basic/core/constants/colors.dart';
import 'package:flutter_basic/core/constants/text_style.dart';
import 'package:flutter_basic/core/widgets/custom_button.dart';
import 'package:flutter_basic/core/widgets/social_button.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 60),
            Text(
              'Welcome To Another Home',
              style: style24_800.copyWith(
                fontWeight: FontWeight.w900,
                fontFamily: 'bold',
              ),
            ),
            SizedBox(height: 10),
            Text('Create your account', style: style12_500),
            SizedBox(height: 30),
            TextFormField(
              decoration: fieldDecoration.copyWith(hintText: 'Enter your name'),
            ),
            SizedBox(height: 15),
            TextFormField(
              decoration: fieldDecoration.copyWith(
                hintText: 'Enter your email',
              ),
            ),
            SizedBox(height: 15),
            TextFormField(
              decoration: fieldDecoration.copyWith(
                hintText: 'Enter your password',
              ),
            ),
            SizedBox(height: 15),
            TextFormField(
              decoration: fieldDecoration.copyWith(
                hintText: 'Confirm your password',
              ),
            ),
            SizedBox(height: 50),
            CustomButton(onTap: () {}, text: 'Register'),

            SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(child: Text('New member ? ', style: style12_400)),
                Text(
                  'Sign Up',
                  style: style12_400.copyWith(
                    color: primaryColor,
                    fontFamily: 'semi-bold',
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 1,
                  width: MediaQuery.of(context).size.width * 0.35,
                  color: blackColor.withOpacity(0.4),
                ),
                Text('OR'),
                Container(
                  height: 1,
                  width: MediaQuery.of(context).size.width * 0.35,
                  color: blackColor.withOpacity(0.4),
                ),
              ],
            ),
            SizedBox(height: 60),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: SocialButton(
                    onTap: () {},
                    text: 'Google',
                    image: AppAssets().googleIcon,
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: SocialButton(
                    onTap: () {},
                    text: 'Facebook',
                    image: AppAssets().facebookIcon,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
