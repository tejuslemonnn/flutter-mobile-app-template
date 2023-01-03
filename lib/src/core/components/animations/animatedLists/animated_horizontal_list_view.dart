import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'animated_scroll_view_item.dart';

class AnimatedHorizontalListView extends StatelessWidget {
  const AnimatedHorizontalListView({
    Key? key,
    required this.child,
    this.height = 26,
    this.itemCount = 10,
  }) : super(key: key);

  final Widget child;
  final double? height;
  final int? itemCount;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height?.h,
      child: ListView.builder(
        cacheExtent: 0,
        scrollDirection: Axis.horizontal,
        itemCount: itemCount,
        itemBuilder: (context, index) {
          return AnimatedScrollViewItem(
            child: child,
          );
        },
      ),
    );
  }
}
