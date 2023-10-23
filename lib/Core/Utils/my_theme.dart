// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import "package:moody/Core/Utils/app_colors.dart";
import 'package:google_fonts/google_fonts.dart';

class Mytheme {
  static ThemeData lightTheme = ThemeData(
      canvasColor: AppColors.white,
      primaryColor: AppColors.primaiary,
      scaffoldBackgroundColor: AppColors.white,
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color: Colors.black, size: 30),
        titleTextStyle: TextStyle(
            fontSize: 30, fontWeight: FontWeight.bold, color: AppColors.accent),
        centerTitle: true,
        elevation: 0,
        backgroundColor: AppColors.transparent,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: AppColors.accent,
          unselectedItemColor: AppColors.white,
          selectedIconTheme: IconThemeData(size: 32),
          unselectedIconTheme: IconThemeData(size: 24)),
      textTheme: TextTheme(
        bodySmall: GoogleFonts.libreBaskerville(
            fontSize: 16, fontWeight: FontWeight.w500, color: AppColors.accent),
        bodyMedium: GoogleFonts.libreBaskerville(
            fontSize: 25, fontWeight: FontWeight.w400, color: AppColors.accent),
        bodyLarge: GoogleFonts.robotoSlab(
            fontWeight: FontWeight.w600, fontSize: 24, color: AppColors.accent),
      ),
      dividerColor: AppColors.primaiary);
}
