import 'package:flutter/material.dart';
import 'package:flutter_basic/core/constants/text_style.dart';

final fieldDecoration = InputDecoration(
  hintText: 'Enter your email',
  hintStyle: style12_400,
  contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),

  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(200),
    borderSide: const BorderSide(color: Colors.grey, width: 1.5),
  ),

  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(200),
    borderSide: const BorderSide(color: Colors.grey, width: 1.5),
  ),

  errorBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(200),
    borderSide: const BorderSide(color: Colors.grey, width: 1.5),
  ),

  focusedErrorBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(200),
    borderSide: const BorderSide(color: Colors.grey, width: 1.5),
  ),

  disabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(200),
    borderSide: const BorderSide(color: Colors.grey, width: 1.5),
  ),
);
