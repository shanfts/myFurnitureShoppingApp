import 'package:flutter/material.dart';
import 'package:my_furniture_app/theme/theme_constants.dart';
import 'package:my_furniture_app/theme/theme_manager.dart';

import 'package:my_furniture_app/views/get_started.dart';

void main() {
  runApp(const MyApp());
}

ThemeManager _themeManager = ThemeManager();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: _themeManager.themeMode,
      home: const GetStartedScreen(),
    );
  }
}
