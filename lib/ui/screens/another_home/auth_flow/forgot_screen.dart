import 'package:flutter/material.dart';
import 'package:flutter_basic/core/constants/auth_text_field.dart';
import 'package:flutter_basic/core/constants/colors.dart';
import 'package:flutter_basic/core/constants/text_style.dart';
import 'package:flutter_basic/ui/custom_widgets/custom_back_button.dart';
import 'package:flutter_basic/ui/custom_widgets/custom_button.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class ForgotScreen extends StatelessWidget {
  const ForgotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 70, leading: CustomBackButton()),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text(
              'Forgot your password \nand continue',
              style: style24_600.copyWith(
                fontWeight: FontWeight.w700,
                fontFamily: 'bold',
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              decoration: fieldDecoration.copyWith(
                hintText: 'Enter email address',
              ),
            ),

            Spacer(),
            CustomButton(onTap: () {}, text: 'Verify'),
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
