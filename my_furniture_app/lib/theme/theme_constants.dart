import 'package:my_furniture_app/constants/packageImport.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.system;
  bool get isDarkMode => themeMode == ThemeMode.dark;

  void toggleTheme(bool isOn) {
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
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
      textStyle: GoogleFonts.gelasio(
        fontSize: 16,
        color: Colors.white,
      ),
      backgroundColor: darkGrayClr,
    )),
    textTheme: TextTheme(
      bodyLarge: GoogleFonts.margarine(color: Colors.black),
      headlineSmall: GoogleFonts.gelasio(color: lightGrayClr),
      headlineMedium: GoogleFonts.gelasio(color: darkGrayClr),
      titleMedium: GoogleFonts.gelasio(color: lightGrayClr),
    ),
    //brightness: Brightness.light
  );
  //* Dark theme stayling area started
}
