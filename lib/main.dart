import 'package:jokes/ui/router.dart';
import 'package:jokes/ui/shared/theme.dart';
import 'package:flutter/material.dart';

import 'locator.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightTheme,
      initialRoute: '/',
      onGenerateRoute: Router.generateRoutes,
    );
  }
}
