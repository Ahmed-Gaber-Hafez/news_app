import 'package:flutter/material.dart';
import 'package:news_app/core/theme/application_theme.dart';
import 'package:news_app/pages/home/home_view.dart';
import 'package:news_app/pages/settings/settings_view.dart';
import 'package:news_app/pages/splash_screen/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ApplicationTheme.lightTheme,
      themeMode: ThemeMode.light,
      initialRoute: SplashView.routName,
      routes: {
        SplashView.routName: (context) => const SplashView(),
        HomeView.routeName: (context) => HomeView(),
        SettingsView.routeName: (context) => const SettingsView(),
      },
    );
  }
}
