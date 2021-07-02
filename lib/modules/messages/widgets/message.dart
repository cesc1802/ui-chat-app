import 'package:flutter/material.dart';
import 'package:ui_chat_app/models/ChatMessage.dart';
import 'package:ui_chat_app/res/dimens.dart';
import 'package:ui_chat_app/themes/app_colors.dart';

import 'audio_message.dart';
import 'text_message.dart';
import 'video_message.dart';

class Message extends StatelessWidget {
  const Message({
    Key? key,
    required this.message,
  }) : super(key: key);

  final ChatMessage message;

  @override
  Widget build(BuildContext context) {
    Widget messageContain(ChatMessage message) {
      switch (message.messageType) {
        case ChatMessageType.text:
          return TextMessage(message: message);
        case ChatMessageType.audio:
          return AudioMessage(message: message);
        case ChatMessageType.video:
          return VideoMessage(message: message);
        case ChatMessageType.image:
          return ImageMessage(message: message);
        default:
          return Gaps.defaultGap;
      }
    }

    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment:
            message.isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          ),
          if (!message.isSender) ...[
            CircleAvatar(
              backgroundImage: AssetImage("assets/images/user_2.png"),
              radius: 12,
            ),
          ],
          Gaps.hGap8,
          messageContain(message),
          if (message.isSender)
            MessageStatusDot(
              status: message.messageStatus,
            ),
        ],
      ),
    );
  }
}

class MessageStatusDot extends StatelessWidget {
  final MessageStatus status;

  const MessageStatusDot({
    Key? key,
    required this.status,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Color dotColor(MessageStatus status) {
      switch (status) {
        case MessageStatus.not_sent:
          return AppColors.errorColor;
        case MessageStatus.not_view:
          return Theme.of(context).textTheme.bodyText1!.color!.withOpacity(0.1);
        case MessageStatus.viewed:
          return AppColors.primaryColor;
        default:
          return Colors.transparent;
      }
    }

    return Container(
      margin: EdgeInsets.only(left: 10),
      width: 12,
      height: 12,
      decoration: BoxDecoration(
        color: dotColor(status),
        shape: BoxShape.circle,
      ),
      child: Icon(
        status == MessageStatus.not_sent ? Icons.close : Icons.done,
        size: 9,
        color: Theme.of(context).scaffoldBackgroundColor,
      ),
    );
  }
}

class ImageMessage extends StatelessWidget {
  final ChatMessage message;

  const ImageMessage({
    Key? key,
    required this.message,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
