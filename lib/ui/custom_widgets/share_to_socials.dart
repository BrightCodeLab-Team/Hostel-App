import 'package:flutter/material.dart';
import 'package:flutter_basic/core/constants/app_assets.dart';

class SocialAppsShare extends StatelessWidget {
  final String image;
  final String text;
  final VoidCallback onPresses;
  const SocialAppsShare({
    super.key,
    required this.image,
    required this.text,
    required this.onPresses,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Image.asset(AppAssets.whatsapp, scale: 4, height: 80, width: 80),
        ],
      ),
    );
  }
}
