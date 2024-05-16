import 'package:calculator/src/config/themes/app_theme.dart';
import 'package:calculator/src/presentation/view/home_page.view.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      home: const HomePageView(),
    );
  }
}