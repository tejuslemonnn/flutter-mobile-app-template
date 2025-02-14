import 'dart:core';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobile_template/src/core/init/utils/typedefs.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import '../../components/text/custom_text.dart';

class BaseFunctions {
  static BaseFunctions? _instance;
  static BaseFunctions get instance {
    _instance ??= BaseFunctions._init();
    return _instance!;
  }

  BaseFunctions._init();

  Widget platformIndicator() {
    return Center(
      child: Platform.isIOS
          ? const CupertinoActivityIndicator()
          : const CircularProgressIndicator(),
    );
  }

  IconButton platformBackButton({
    required VoidCallback onPressed,
    Color? color = Colors.black,
  }) {
    return Platform.isIOS
        ? IconButton(
            onPressed: onPressed,
            icon: Icon(
              Icons.arrow_back_ios,
              color: color,
            ),
          )
        : IconButton(
            onPressed: onPressed,
            icon: Icon(
              Icons.arrow_back,
              color: color,
            ),
          );
  }

  Icon platformForwardIcon() {
    return Platform.isIOS
        ? const Icon(Icons.arrow_forward_ios)
        : const Icon(Icons.arrow_forward);
  }

  /// It is especially useful in [BLoC] structure.
  Widget errorText(String errorMessage) {
    return Center(child: CustomText(errorMessage));
  }

  bool isLink(String str) => str.contains(RegExp(
      r'^(https?:\/\/)?([\w\d_-]+)\.([\w\d_\.-]+)\/?\??([^#\n\r]*)?#?([^\n\r]*)'));

  animatedRouting({
    required GoRouterState state,
    required Widget route,
  }) =>
      CustomTransitionPage<void>(
        key: state.pageKey,
        child: route,
        transitionsBuilder: (BuildContext context, Animation<double> animation,
                Animation<double> secondaryAnimation, Widget child) =>
            SlideTransition(
          position: animation.drive(
            Tween<Offset>(
              begin: const Offset(1, 0),
              end: Offset.zero,
            ).chain(CurveTween(curve: Curves.fastOutSlowIn)),
          ),
          child: child,
        ),
      );

  closePopup(BuildContext context) {
    Navigator.of(context, rootNavigator: true).pop();
  }

  String toShortString(String value, {int countCharacter = 8}) {
    return value.length > countCharacter
        ? "${value.substring(0, countCharacter)}..."
        : value;
  }

  String toShortDoubleNumber(double value) {
    String number = value.toString();
    return "${number.split(".").first}.${number.split(".")[1].substring(0, 2)}";
  }

  String convertStringDateYmm(String date) {
    return DateFormat.yMMMEd('tr_TR').format(DateTime.parse(date));
  }

  String convertStringDateTime(String date) {
    return DateFormat('dd/MM/yyyy hh:mm ').format(DateTime.parse(date));
  }

  String convertStringDateYmmm(String date) {
    return DateFormat.yMMMMEEEEd('tr_TR').format(DateTime.parse(date));
  }

  String convertStringDateYMMd(String date) {
    return DateFormat.yMMMd('tr_TR').format(DateTime.parse(date));
  }

  String convertStringDate4(String date) {
    return DateFormat.Hm('tr_TR').format(DateTime.parse(date));
  }

  String printMap(JsonMap map) {
    String str = '';
    map.forEach((key, value) => str += '$key: ${value.toString}, ');
    return str;
  }

  String capitalize(String value) {
    return '${value[0].toUpperCase()}${value.substring(1).toLowerCase()}';
  }
}
