import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PageNavigator {
  PageNavigator({this.ctx});
  BuildContext? ctx;

  void clearStack(Widget? page) {
    Navigator.pushAndRemoveUntil(
        ctx!, MaterialPageRoute(builder: (context) => page!), (route) => false);
  }
}
