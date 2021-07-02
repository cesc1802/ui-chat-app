import 'package:flutter/material.dart';
import 'package:ui_chat_app/modules/chats/pages/chats_screen.dart';
import 'package:ui_chat_app/res/dimens.dart';
import 'package:ui_chat_app/utils/ui_data.dart';
import 'package:ui_chat_app/widgets/primary_button.dart';

class SignInOrSignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Spacer(
                flex: 2,
              ),
              Image.asset(
                MediaQuery.of(context).platformBrightness == Brightness.light
                    ? UIData.logoLight
                    : UIData.logoDark,
                height: 146,
              ),
              Spacer(),
              PrimaryButton(
                text: "Sign In",
                press: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChatsScreen(),
                  ),
                ),
              ),
              Gaps.vGap12,
              PrimaryButton(
                color: Theme.of(context).colorScheme.secondary,
                text: "Sign Up",
                press: () {},
              ),
              Spacer(
                flex: 2,
              )
            ],
          ),
        ),
      ),
    );
  }
}
