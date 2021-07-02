import 'package:flutter/material.dart';
import 'package:ui_chat_app/models/ChatMessage.dart';
import 'package:ui_chat_app/themes/app_colors.dart';

class AudioMessage extends StatelessWidget {
  final ChatMessage message;

  const AudioMessage({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16,
      ),
      width: MediaQuery.of(context).size.width * 0.55,
      height: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: AppColors.primaryColor.withOpacity(message.isSender ? 1 : 0.1),
      ),
      child: Row(
        children: [
          Icon(
            Icons.play_arrow,
            color: message.isSender ? Colors.white : AppColors.primaryColor,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  Container(
                    width: double.infinity,
                    height: 2,
                    color: message.isSender
                        ? Colors.white
                        : AppColors.primaryColor.withOpacity(0.4),
                  ),
                  Positioned(
                    left: 0,
                    child: Container(
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                        color: message.isSender
                            ? Colors.white
                            : AppColors.primaryColor,
                        shape: BoxShape.circle,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Text(
            "0.37",
            style: TextStyle(
              fontSize: 12,
              color: message.isSender ? Colors.white : null,
            ),
          ),
        ],
      ),
    );
  }
}
