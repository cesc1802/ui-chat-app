import 'package:flutter/material.dart';
import 'package:ui_chat_app/models/Chat.dart';
import 'package:ui_chat_app/modules/messages/pages/message_screen.dart';
import 'package:ui_chat_app/res/dimens.dart';
import 'package:ui_chat_app/themes/app_colors.dart';
import 'package:ui_chat_app/widgets/filled_outline_button.dart';

import 'chat_card.dart';

class ChatBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
          color: AppColors.primaryColor,
          child: Row(
            children: [
              FillOutlineButton(press: () {}, text: "Recent Message"),
              Gaps.hGap16,
              FillOutlineButton(
                press: () {},
                text: "Active",
                isFilled: false,
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: chatsData.length,
            itemBuilder: (context, index) => ChatCard(
              chat: chatsData[index],
              press: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MessageScreen(),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
