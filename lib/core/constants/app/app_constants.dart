import 'package:flutter/material.dart';

class AppConstants {
  static AppConstants? _instance;
  static AppConstants get instance {
    _instance ??= AppConstants._init();
    return _instance!;
  }

  AppConstants._init();

  Color mineShaft = const Color(0xFF333333);
}
