import 'package:flutter/material.dart';

import 'package:flutter_basic/core/constants/text_style.dart';
import 'package:flutter_basic/ui/custom_widgets/custom_button.dart';

class Chatscreen extends StatelessWidget {
  const Chatscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text('Chat', style: style18_400),
      ),
      body: Column(
        children: [CustomButton(onTap: () {}, text: 'Chat')],
      ),
    );
  }
}
