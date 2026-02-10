import 'package:flutter/material.dart';
import 'package:flutter_basic/core/constants/app_assets.dart';
import 'package:flutter_basic/core/constants/colors.dart';
import 'package:flutter_basic/core/constants/text_style.dart';
import 'package:flutter_basic/core/model/mesaage.dart';
import 'package:flutter_basic/ui/custom_widgets/circleIconButton.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<MessageModel> messages = [
    MessageModel(
      text: 'Salam-O-Alaikum',
      date: DateTime.now(),
      isSendByMe: false,
    ),
    MessageModel(text: 'WalekomSalam', date: DateTime.now(), isSendByMe: true),
    MessageModel(text: 'Jazakallah ', date: DateTime.now(), isSendByMe: false),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            CircleAvatar(
              radius: 30,

              backgroundImage: AssetImage(AppAssets.profile),
            ),
            5.horizontalSpace,
            Text(
              'Daniel Brown',
              style: style18_600.copyWith(fontFamily: 'semibold'),
            ),
          ],
        ),
        actions: [
          CircularIconButton(icon: Icons.flag_outlined, onTap: () {}),
          CircularIconButton(icon: Icons.more_horiz_sharp, onTap: () {}),
        ],
        leading: CircularIconButton(
          imagePath: AppAssets.reelBackBtn,
          onTap: () {},
        ),
      ),
      body: ListView.builder(
        itemCount: messages.length,

        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: messages[index].isSendByMe == false
                  ? MainAxisAlignment.start
                  : MainAxisAlignment.end,
              crossAxisAlignment: messages[index].isSendByMe == false
                  ? CrossAxisAlignment.start
                  : CrossAxisAlignment.end, //
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: messages[index].isSendByMe == false
                        ? primaryColor
                        : whiteColor,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 10,
                        spreadRadius: 2,
                        offset: Offset(4, 4),
                      ),
                    ],
                  ),
                  child: Text("${messages[index].text}"),
                ),
                Text("${messages[index].date!.minute}"),
              ],
            ),
          );
        },
      ),
    );
  }
}
