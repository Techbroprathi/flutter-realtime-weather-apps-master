import 'package:flutter/material.dart';
import 'package:flutter_upwork_project/core/color.dart';


class Styles {
  static ThemeData themeDta() {
    return ThemeData(
      primaryColor: Colors.green,
      scrollbarTheme: ScrollbarThemeData(
        thumbColor: MaterialStateProperty.all(green.withOpacity(0.5)),
        isAlwaysShown: true,
        mainAxisMargin: 200,
        radius: Radius.circular(50.0),
      ),
    );
  }
}