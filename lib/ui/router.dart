import 'package:flutter/material.dart';

class Router {
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      // case '/add':
      //   return MaterialPageRoute(builder: (context) => AddCoinPage());
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
                body: Center(
                  child: Text(
                      "404 Not Found. No Route defined for ${settings.name}"),
                ),
              ),
        );
    }
  }
}
