import 'package:countdown_timer/core/theme/app_colors.dart';
import 'package:countdown_timer/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final ColorScheme _lightColorScheme = ColorScheme.light(
    primary: AppColors.primary,
    secondary: AppColors.secondary,
    tertiary: AppColors.tertiary,
    surface: AppColors.surfaceLight,
    onPrimary: Colors.white,
    onSecondary: Colors.white,
    onSurface: AppColors.secondary, // نص غامق فوق خلفية فاتحة
  );

  static final ColorScheme _darkColorScheme = ColorScheme.dark(
    primary: AppColors.primary,
    secondary: AppColors.secondary,
    tertiary: AppColors.tertiary,
    surface: AppColors.surfaceDark,
    onPrimary: Colors.white,
    onSecondary: Colors.white,
    onSurface: Colors.white, 
  );

static TextTheme _buildTextTheme(Color onSurfaceColor) {
    return TextTheme(
      headlineLarge: AppTextStyles.headLine.copyWith(
        fontSize: 32, fontWeight: FontWeight.bold, color: onSurfaceColor,
      ),
      headlineMedium: AppTextStyles.headLine.copyWith(
        fontSize: 24, fontWeight: FontWeight.w600, color: onSurfaceColor,
      ),
      bodyLarge: AppTextStyles.body.copyWith(
        fontSize: 16, fontWeight: FontWeight.normal, color: onSurfaceColor,
      ),
      bodyMedium: AppTextStyles.body.copyWith(
        fontSize: 14, fontWeight: FontWeight.normal, color: onSurfaceColor,
      ),
      displayLarge: AppTextStyles.label.copyWith(
        fontSize: 48, fontWeight: FontWeight.bold, color: onSurfaceColor,
      ),
      labelSmall: AppTextStyles.label.copyWith(
        fontSize: 12, fontWeight: FontWeight.w500, color: onSurfaceColor,
      ),
    );
}

  static ThemeData get lightTheme => ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        colorScheme: _lightColorScheme,
        scaffoldBackgroundColor: AppColors.backgroundLight,
        textTheme: _buildTextTheme(AppColors.secondary),
      );

  static ThemeData get darkTheme => ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        colorScheme: _darkColorScheme,
        scaffoldBackgroundColor: AppColors.backgroundDark,
        textTheme: _buildTextTheme(Colors.white),
      );
}