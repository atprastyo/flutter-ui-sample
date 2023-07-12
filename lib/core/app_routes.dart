import 'package:flutter/material.dart';
import 'package:flutter_ui_sample/features/login/screens/login_screen.dart';

class Routes {
  const Routes._();

  static Map<String, WidgetBuilder> routeList = <String, WidgetBuilder>{
    LoginScreen.route: (BuildContext context) => const LoginScreen(),
    // RegisterScreen.route: (BuildContext context) => const RegisterScreen(),
  };
}
