import 'package:driver/app/themes/themes.dart';
import 'package:driver/constants/constants.dart';
import 'package:driver/extensions/extensions.dart';
import 'package:driver/generated/assets.gen.dart';
import 'package:driver/widgets/widgets.dart';
import 'package:flutter/material.dart';

part 'widgets/background.dart';

part 'widgets/text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Background(),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Center(
              child: ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  Assets.images.appLogo.image(scale: 3),
                  Spaces.h32.size,
                  Text(
                    context.localization.loginTitle,
                    textAlign: TextAlign.start,
                    style: context.textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spaces.h16.size,
                  KTextField(
                    hint: context.localization.usernameHint,
                    borderRadius: Radius.r32.size,
                    prefixIcon: const Icon(AppIcons.username),
                  ),
                  Spaces.h16.size,
                  KTextField(
                    hint: context.localization.passwordHint,
                    borderRadius: Radius.r32.size,
                    prefixIcon: const Icon(AppIcons.password),
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: const Icon(AppIcons.hide),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Padding(
                      padding: Paddings.a14.size,
                      child: Text(
                        context.localization.forgotPassword,
                        textAlign: TextAlign.end,
                        style: context.textTheme.labelLarge,
                      ),
                    ),
                  ),
                  KElevatedButton(
                    label: context.localization.loginBtn,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
