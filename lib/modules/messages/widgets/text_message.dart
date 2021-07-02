import 'package:flutter/material.dart';
import 'package:ui_chat_app/models/ChatMessage.dart';
import 'package:ui_chat_app/themes/app_colors.dart';

class TextMessage extends StatelessWidget {
  const TextMessage({
    Key? key,
    required this.message,
  }) : super(key: key);

  final ChatMessage message;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Text(
        message.text,
        style: TextStyle(
            color: message.isSender
                ? Colors.white
                : Theme.of(context).textTheme.bodyText1!.color),
      ),
      decoration: BoxDecoration(
        color: AppColors.primaryColor.withOpacity(message.isSender ? 1 : 0.1),
        borderRadius: BorderRadius.circular(30),
      ),
    );
  }
}
