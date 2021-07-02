import 'package:flutter/material.dart';
import 'package:ui_chat_app/models/ChatMessage.dart';
import 'package:ui_chat_app/themes/app_colors.dart';

class VideoMessage extends StatelessWidget {
  final ChatMessage message;

  const VideoMessage({Key? key, required this.message}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.45, //45% of total width
      child: AspectRatio(
        aspectRatio: 1.6,
        child: Stack(
          alignment: Alignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset("assets/images/Video Place Here.png"),
            ),
            Container(
              width: 25,
              height: 25,
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                shape:
                    BoxShape.circle, // borderRadius: BorderRadius.circular(50),
              ),
              child: Icon(
                Icons.play_arrow,
                size: 16,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
