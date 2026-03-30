import 'package:flutter/material.dart';

import 'package:flutter_basic/core/constants/text_style.dart';

class Chatscreen extends StatelessWidget {
  const Chatscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Chats', style: style16_00)),
    );
  }
}
