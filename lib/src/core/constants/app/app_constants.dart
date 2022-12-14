import 'package:flutter/material.dart';

class AppConstants {
  static AppConstants? _instance;
  static AppConstants get instance {
    _instance ??= AppConstants._init();
    return _instance!;
  }

  AppConstants._init();

  String appName = "Flutter Mobile App Template";

  Color mineShaft = const Color(0xFF333333);
}
