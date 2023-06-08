// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/services.dart';
import 'package:my_furniture_app/theme/theme_constants.dart';
import 'package:my_furniture_app/views/get_started.dart';
import 'package:my_furniture_app/constants/packageImport.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: themeController.lightTheme,
      darkTheme: themeController.darkTheme,
      themeMode: ThemeMode.system,
      home: const GetStartedScreen(),
    );
  }
}
