import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'UI/loginUI/LoginPage.dart';
import 'constants/colors.dart';
import 'constants/strings.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Strings.appTitle,
      theme: ThemeData(
        fontFamily: 'iransans',
        primarySwatch: MaterialColor(IColors.red.value, swatch),
      ),
      home: LoginPage(),
    );
  }
}