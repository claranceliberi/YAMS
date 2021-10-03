import 'package:boilerplate/ui/login/login.dart';
import 'package:boilerplate/ui/splash/splash.dart';
import 'package:flutter/material.dart';

class Routes {
  Routes._();

  //static variables
  static const String splash = '/splash';
  // static const String login = '/login';
  static const String welcome = '/welcome';
  static const String home = '/home';

  static final routes = <String, WidgetBuilder>{
    splash: (BuildContext context) => SplashScreen(),
    // login: (BuildContext context) => LoginScreen(),
    welcome: (BuildContext context) => WelcomeScreen(),
    home: (BuildContext context) => HomeScreen(),
  };
}
