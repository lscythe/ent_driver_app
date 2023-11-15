import 'package:driver/constants/constants.dart';
import 'package:driver/extensions/extensions.dart';
import 'package:driver/models/models.dart';
import 'package:flutter/material.dart';

class MessageDialog extends StatelessWidget {
  const MessageDialog({super.key, required this.message});

  final MessageResponse message;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      surfaceTintColor: Colors.transparent,
      icon: const Icon(AppIcons.message),
      title: Text(
        message.title.orEmpty,
        style:
            context.textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
      ),
      content: Text(message.message.orEmpty),
    );
  }
}
