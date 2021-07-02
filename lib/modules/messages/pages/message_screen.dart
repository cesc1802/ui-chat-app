import 'package:flutter/material.dart';
import 'package:ui_chat_app/modules/messages/widgets/message_body.dart';
import 'package:ui_chat_app/res/dimens.dart';

class MessageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: MessageBody(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Row(
        children: [
          BackButton(),
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/user_2.png"),
          ),
          Gaps.hGap12,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Kristin Watson",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Text(
                "Active 3m ago",
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.local_phone),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.videocam),
        ),
        Gaps.hGap8,
      ],
    );
  }
}
