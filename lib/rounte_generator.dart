import 'package:flutter/material.dart';
import 'package:flutter_routes_and_navigations/screens/error_screen.dart';
import 'package:flutter_routes_and_navigations/screens/first_screen.dart';
import 'package:flutter_routes_and_navigations/screens/second_screen.dart';
import 'package:flutter_routes_and_navigations/screens/third_screen.dart';

class RouteGenerator {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final arg = settings.arguments;

    switch (settings.name) {
      case HomeScreen.routeName:
        return MaterialPageRoute(builder: (context) => const HomeScreen());

      case SecondScreen.routeName:
        if (arg is String) {
          return MaterialPageRoute(
            builder: (context) => SecondScreen(data: arg),
          );
        } else {
          return _errorRoute("Data isn't valid!");
        }
      case ThirdScreen.routeName:
        if (arg is String) {
          return MaterialPageRoute(
            builder: (context) => ThirdScreen(data: arg),
          );
        } else {
          return _errorRoute("Data isn't valid!");
        }
      default:
        return _errorRoute("Something went wrong!");
    }
  }

  static Route<dynamic> _errorRoute([String error = '']) {
    return MaterialPageRoute(builder: (context) => ErrorScreen(error: error));
  }
}
