import 'package:flutter/material.dart';
import 'package:flutter_basic/core/constants/auth_text_field.dart';
import 'package:flutter_basic/core/widgets/custom_button.dart';
import 'package:flutter_basic/core/widgets/social_button.dart';
import 'package:flutter_basic/core/constants/app_assets.dart';
import 'package:flutter_basic/core/constants/colors.dart';
import 'package:flutter_basic/core/constants/text_style.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome To Another Home',
              style: style24_400.copyWith(
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ), //
            ),
            SizedBox(height: 5),
            Text(
              'Please login to your account',
              style: style12_500.copyWith(fontSize: 14),
            ),
            SizedBox(height: 20),
            TextFormField(
              decoration: fieldDecoration.copyWith(
                hintText: 'Enter your email',
              ),
            ),

            SizedBox(height: 20),
            TextFormField(
              decoration: fieldDecoration.copyWith(
                hintText: 'Enter your password',
              ),
            ),

            SizedBox(height: 50),
            TextButton(
              onPressed: () {},
              child: Text(
                'Forgot Password',
                style: style12_500.copyWith(fontSize: 14, color: redColor),
              ),
            ),
            SizedBox(height: 20),

            ///
            /// login button
            ///
            CustomButton(
              onTap: () {
                //Get.to(LoginScreen());
                print('Login button pressed');
              },
              text: 'Login',
            ),
            SizedBox(height: 30),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "New member? ",
                    style: style12_400.copyWith(fontSize: 14),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Register',
                      style: style12_600.copyWith(color: primaryColor),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 1,
                  width: MediaQuery.of(context).size.width * 0.35,
                  color: blackColor.withOpacity(0.4),
                ),
                Text('Or'),
                Container(
                  height: 1,
                  width: MediaQuery.of(context).size.width * 0.35,
                  color: blackColor.withOpacity(0.4),
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: SocialButton(
                    onTap: () {
                      print('Google button pressed');
                    },
                    text: 'Google',
                    image: AppAssets().googleIcon,
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: SocialButton(
                    onTap: () {
                      print('Facebook button pressed');
                    },
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
