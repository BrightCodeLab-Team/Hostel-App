import 'package:flutter/material.dart';
import 'package:flutter_basic/core/constants/app_assets.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: 375,
            height: 348,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),image:  ),
          ),
        ],
      ),
    );
  }
}
