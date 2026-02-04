import 'package:flutter/material.dart';
import 'package:flutter_basic/core/constants/colors.dart';
import 'package:flutter_basic/core/constants/text_style.dart';
import 'package:flutter_basic/ui/custom_widgets/custom_back_button.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.30),
                    blurRadius: 6,
                    offset: Offset(0, 2),
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: Icon(Icons.more_horiz_outlined, color: blackColor),
            ),
          ),
        ],
        leading: CustomBackButton(),
        title: Padding(
          padding: const EdgeInsets.only(right: 150.0),
          child: Text(
            'Payment ',
            style: style20_600.copyWith(color: blackColor),
          ),
        ),
      ),
    );
  }
}
