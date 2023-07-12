import 'package:flutter/material.dart';
import 'package:flutter_ui_sample/core/app_routes.dart';
import 'package:flutter_ui_sample/core/app_theme.dart';
import 'package:flutter_ui_sample/features/login/screens/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter UI Sample',
      theme: AppTheme.darkAppTheme,
      routes: Routes.routeList,
      home: LoginScreen(),
    );
  }
}
