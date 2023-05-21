import 'package:flutter/services.dart';
import 'package:my_furniture_app/theme/theme_constants.dart';
import 'package:my_furniture_app/views/get_started.dart';
import 'package:my_furniture_app/constants/packageImport.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      builder: (context, _) {
        final themeProvider = Provider.of<ThemeProvider>(context);
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: MyThemes.lightTheme,
          darkTheme: MyThemes.darkTheme,
          themeMode: themeProvider.themeMode,
          home: const GetStartedScreen(),
        );
      },
    );
  }
}
