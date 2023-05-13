import 'package:flutter/material.dart';
import 'package:my_furniture_app/theme/theme_manager.dart';

ThemeManager _themeManager = ThemeManager();

class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({super.key});

  @override
  State<GetStartedScreen> createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  @override
  void dispose() {
    _themeManager.removeListener(themeListener);
    super.dispose();
  }

  @override
  void initState() {
    _themeManager.addListener(themeListener);
    super.initState();
  }

  themeListener() {
    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My app'),
        actions: [
          Switch(
            value: _themeManager.themeMode == ThemeMode.dark,
            onChanged: (newvalue) {
              _themeManager.toggleTheme(newvalue);
            },
          )
        ],
      ),
    );
  }
}
