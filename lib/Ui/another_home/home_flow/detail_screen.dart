import 'package:flutter/material.dart';

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
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          ),
        ],
      ),
    );
  }
}
