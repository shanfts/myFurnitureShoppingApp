import 'package:my_furniture_app/constants/packageImport.dart';

class ThemeController extends GetxController {
  final ThemeData lightTheme = MyThemes.lightTheme;
  final ThemeData darkTheme = MyThemes.darkTheme;

  Rx<ThemeData> currentTheme = MyThemes.lightTheme.obs;

  void toggleTheme() {
    if (currentTheme.value == lightTheme) {
      currentTheme.value = darkTheme;
    } else {
      currentTheme.value = lightTheme;
    }
    Get.changeThemeMode(Get.isDarkMode ? ThemeMode.light : ThemeMode.dark);
  }
}

class MyThemes {
  //* Dark theme stayling area started
  static final darkTheme = ThemeData(
      textTheme: TextTheme(
        headlineSmall: GoogleFonts.gelasio(color: lightGrayClr),
        headlineMedium: GoogleFonts.gelasio(color: darkGrayClr),
        titleMedium: GoogleFonts.gelasio(color: lightGrayClr),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              textStyle: GoogleFonts.merriweather(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ))),
      brightness: Brightness.dark);
  //* Dark theme stayling area Ended

  //* Light theme stayling area started
  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: scafoldClr,
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      textStyle: GoogleFonts.nunitoSans(
        fontSize: 16,
        color: Colors.white,
      ),
      backgroundColor: darkGrayClr,
    )),
    textTheme: TextTheme(
      labelLarge: GoogleFonts.nunitoSans(color: darkGrayClr),
      labelMedium: GoogleFonts.nunitoSans(color: mediumGrayColor),
      bodyLarge: GoogleFonts.margarine(color: Colors.black),
      headlineSmall: GoogleFonts.gelasio(color: lightGrayClr),
      headlineMedium: GoogleFonts.gelasio(color: darkGrayClr),
      titleMedium: GoogleFonts.gelasio(color: lightGrayClr),
    ),
    //brightness: Brightness.light
  );
  //* Dark theme stayling area started
}
