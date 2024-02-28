import 'package:flutter/material.dart';

class MyPageRoute extends MaterialPageRoute {
  MyPageRoute({required WidgetBuilder builder}) : super(builder: builder);

  @override
  Duration get transitionDuration => const Duration(seconds: 2);

  @override
  Curve get curve => Curves.easeInOut;
}
