import 'package:flutter/material.dart';
import 'package:flutter_basic/core/constants/colors.dart';

class CircularIconButton extends StatelessWidget {
  final String? imagePath;
  final IconData? icon;
  final VoidCallback onTap;
  final double size;
  final Color backgroundColor;
  final Color? iconColor;

  const CircularIconButton({
    super.key,
    this.imagePath,
    this.icon,
    required this.onTap,
    this.size = 40,
    this.backgroundColor = whiteColor,
    this.iconColor,
  }) : assert(
         imagePath != null || icon != null,
         'Either imagePath or icon must be provided',
       );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(8),
        width: size,
        height: size,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: backgroundColor,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              blurRadius: 6,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Center(
          child: imagePath != null
              ? Image.asset(
                  imagePath!,
                  width: size * 0.5,
                  height: size * 0.5,
                  fit: BoxFit.cover,
                )
              : Icon(icon, size: size * 0.5, color: iconColor ?? blackColor),
        ),
      ),
    );
  }
}
