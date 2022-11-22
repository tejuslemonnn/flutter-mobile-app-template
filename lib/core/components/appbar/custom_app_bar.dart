import 'package:flutter/material.dart';

/// Since [Scaffold] structure will be the same
/// on many pages of the application, a common structure should be established.

class CustomAppBar extends AppBar {
  CustomAppBar({super.key});

  @override
  State<AppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar();
  }
}
