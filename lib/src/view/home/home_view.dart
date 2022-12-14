import 'package:flutter/material.dart';

import '../../core/components/scaffold/custom_scaffold.dart';
import '../../core/components/text/custom_text.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return const CustomScaffold(
      body: Center(
        child: CustomText("by Zalisoft Mobile Team"),
      ),
    );
  }
}
