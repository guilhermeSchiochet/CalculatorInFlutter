import 'package:calculator_in_flutter/src/config/themes/app_theme.dart';
import 'package:calculator_in_flutter/src/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: AppTheme.dark,
      home: const HomeScreen(),
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
    );
  }
}