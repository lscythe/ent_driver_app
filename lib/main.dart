import 'package:driver/app/driver_app.dart';
import 'package:driver/locator/locator.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(const DriverApp());
}
