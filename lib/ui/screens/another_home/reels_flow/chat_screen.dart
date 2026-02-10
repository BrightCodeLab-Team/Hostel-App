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
  final TextEditingController _messageController = TextEditingController();

  List<MessageModel> messages = [
    MessageModel(text: 'Salam', date: DateTime.now(), isSendByMe: false),
    MessageModel(text: 'W/Salam', date: DateTime.now(), isSendByMe: true),
    MessageModel(text: 'achaaa', date: DateTime.now(), isSendByMe: false),
    MessageModel(text: 'ok', date: DateTime.now(), isSendByMe: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            CircleAvatar(
              radius: 22,
              backgroundImage: AssetImage(AppAssets.profile),
            ),
            8.horizontalSpace,
            Text(
              'Daniel Brown',
              style: style18_600.copyWith(fontFamily: 'semibold'),
            ),
          ],
        ),
        actions: [
          CircularIconButton(icon: Icons.flag_outlined, onTap: () {}),
          CircularIconButton(icon: Icons.more_horiz, onTap: () {}),
        ],
        leading: CircularIconButton(
          imagePath: AppAssets.reelBackBtn,
          onTap: () => Navigator.pop(context),
        ),
      ),

      body: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        itemCount: messages.length,
        itemBuilder: (context, index) {
          final message = messages[index];
          final isMe = message.isSendByMe ?? false;

          return Align(
            alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: isMe
                  ? CrossAxisAlignment.end
                  : CrossAxisAlignment.start,
              children: [
                ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.7,
                  ),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      color: isMe ? whiteColor : primaryColor,
                      borderRadius: BorderRadius.only(
                        topLeft: const Radius.circular(16),
                        topRight: const Radius.circular(16),
                        bottomLeft: isMe
                            ? const Radius.circular(16)
                            : const Radius.circular(0),
                        bottomRight: isMe
                            ? const Radius.circular(0)
                            : const Radius.circular(16),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.15),
                          blurRadius: 5,
                          offset: const Offset(2, 2),
                        ),
                      ],
                    ),
                    child: Text(
                      message.text ?? '',
                      style: TextStyle(
                        color: isMe ? Colors.black : Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  "${message.date?.hour}:${message.date?.minute.toString().padLeft(2, '0')}",
                  style: const TextStyle(fontSize: 11, color: Colors.grey),
                ),
                const SizedBox(height: 10),
              ],
            ),
          );
        },
      ),

      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(30),
            ),
            child: TextFormField(
              controller: _messageController,
              decoration: InputDecoration(
                hintText: 'Message',
                hintStyle: style12_400,

                border: InputBorder.none,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,

                suffixIcon: IconButton(
                  icon: Icon(Icons.send, color: blackColor),
                  onPressed: () {
                    if (_messageController.text.trim().isEmpty) return;

                    setState(() {
                      messages.add(
                        MessageModel(
                          text: _messageController.text.trim(),
                          date: DateTime.now(),
                          isSendByMe: true,
                        ),
                      );
                    });

                    _messageController.clear();
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
