import 'dart:math';

import 'package:driver/features/features.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:go_router/go_router.dart';

class LocalNotificationService {
  LocalNotificationService._();

  static final FlutterLocalNotificationsPlugin _localNotification =
      FlutterLocalNotificationsPlugin();

  static const String _channelId = "ent_notification";
  static const String _channelName = "ent_notification_channel";

  static Future<void> init(BuildContext context) async {
    const AndroidInitializationSettings androidInitSetting =
        AndroidInitializationSettings("@mipmap/ic_launcher");

    const DarwinInitializationSettings darwinInitializationSetting =
        DarwinInitializationSettings();

    const InitializationSettings initSetting = InitializationSettings(
      android: androidInitSetting,
      iOS: darwinInitializationSetting,
    );

    await _localNotification.initialize(
      initSetting,
    );
  }

  static Future<void> showNotification(
    RemoteMessage message, {
    Importance importance = Importance.defaultImportance,
    AndroidNotificationCategory? category,
    Priority priority = Priority.defaultPriority,
  }) async {
    final AndroidNotificationDetails androidDetail = AndroidNotificationDetails(
      _channelId,
      _channelName,
      importance: importance,
      category: category,
      priority: priority,
      visibility: NotificationVisibility.public,
    );
    const DarwinNotificationDetails iosDetail = DarwinNotificationDetails(
      presentAlert: true,
      presentBadge: true,
      presentSound: true,
    );

    final notificationDetails =
        NotificationDetails(android: androidDetail, iOS: iosDetail);

    final id = Random().nextInt(100);

    await _localNotification.show(
      id,
      message.notification?.title ?? "",
      message.notification?.body ?? "",
      notificationDetails,
      payload: message.data.toString(),
    );
  }

  static Future<void> notificationHandler(BuildContext context) async {
    const AndroidInitializationSettings androidInitSetting =
        AndroidInitializationSettings("@mipmap/ic_launcher");

    const DarwinInitializationSettings darwinInitializationSetting =
        DarwinInitializationSettings();

    const InitializationSettings initSetting = InitializationSettings(
      android: androidInitSetting,
      iOS: darwinInitializationSetting,
    );

    await _localNotification.initialize(
      initSetting,
      onDidReceiveNotificationResponse: (details) {
        context.go(HomeScreen.path);
      },
    );
  }
}
