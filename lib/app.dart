import 'package:flutter/material.dart';
import 'package:ridana_app/common/themes/light_theme.dart';
import 'package:ridana_app/features/views/pages/welcome/welcome_page.dart';
import 'package:ridana_app/features/views/sample_page.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightTheme,
      // darkTheme: darkTheme,
      // themeMode:
      //     ThemeMode
      //         .system, // Automatically switch between light and dark themes
      debugShowCheckedModeBanner: false,
      home: WelcomePage(),
    );
  }
}
