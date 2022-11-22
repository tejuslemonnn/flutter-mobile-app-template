import 'package:flutter/material.dart';
import 'package:flutter_mobile_template/core/components/text/custom_text.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CustomText("Zalisoft Mobile Team"),
      ),
    );
  }
}
