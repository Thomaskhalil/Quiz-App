import 'package:flutter/material.dart';

//? Screens
import 'package:moody/Pages/home_screen.dart';
import 'package:moody/Pages/main_app.dart';
import 'package:moody/Pages/splash_screen.dart';
import 'package:moody/Core/Utils/my_theme.dart';
import 'package:moody/Core/Utils/my_theme.dart';
import 'package:moody/Core/Utils/my_theme.dart';
import 'package:moody/Core/Utils/my_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Mytheme.lightTheme,
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      initialRoute: MainApp.routeName,
      routes: {
        SplashScreen.routeName: (context) => SplashScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
        MainApp.routeName: (context) => MainApp(),
      },
    );
  }
}
