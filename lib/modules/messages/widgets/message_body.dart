import 'package:flutter/material.dart';
import 'package:ui_chat_app/models/ChatMessage.dart';

import 'chat_input_field.dart';
import 'message.dart';

class MessageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: demeChatMessages.length,
            itemBuilder: (context, index) => Message(
              message: demeChatMessages[index],
            ),
          ),
        ),
        ChatInputField(),
      ],
    );
  }
}
