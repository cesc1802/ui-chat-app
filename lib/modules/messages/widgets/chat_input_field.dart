import 'package:flutter/material.dart';
import 'package:ui_chat_app/res/dimens.dart';
import 'package:ui_chat_app/themes/app_colors.dart';

class ChatInputField extends StatelessWidget {
  const ChatInputField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        boxShadow: [
          BoxShadow(
              offset: Offset(0, 4),
              blurRadius: 32,
              color: Color(0xff087949).withOpacity(0.08)),
        ],
      ),
      child: SafeArea(
        child: Row(
          children: [
            Icon(
              Icons.mic,
              color: AppColors.primaryColor,
            ),
            Gaps.hGap6,
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                height: 50,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor.withOpacity(0.05),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.sentiment_satisfied_alt_outlined,
                      color: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .color!
                          .withOpacity(0.64),
                    ),
                    Gaps.hGap6,
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Type message",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.attach_file,
                      color: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .color!
                          .withOpacity(0.64),
                    ),
                    Gaps.hGap4,
                    Icon(
                      Icons.camera_alt_outlined,
                      color: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .color!
                          .withOpacity(0.64),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
