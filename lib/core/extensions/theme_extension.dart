import 'package:flutter/material.dart';
import 'package:countdown_timer/core/theme/app_colors.dart';
import 'package:countdown_timer/core/theme/app_icon_extension.dart';

extension AppThemeContext on BuildContext {
  IconData get themeIcon =>
      Theme.of(this).extension<AppIconExtension>()!.themeToggleIcon;

  Color get primary => Theme.of(this).colorScheme.primary;
  Color get secondary => Theme.of(this).colorScheme.secondary;
  Color get tertiary => Theme.of(this).colorScheme.tertiary;
  Color get surface => Theme.of(this).colorScheme.surface;
  Color get onSurface => Theme.of(this).colorScheme.onSurface;
  Color get background => Theme.of(this).scaffoldBackgroundColor;
  Color get neutral => AppColors.neutral;

  TextStyle? get headline => Theme.of(this).textTheme.headlineLarge;
  TextStyle? get headlineMedium => Theme.of(this).textTheme.headlineMedium;
  TextStyle? get body => Theme.of(this).textTheme.bodyLarge;
  TextStyle? get bodyMedium => Theme.of(this).textTheme.bodyMedium;
  TextStyle? get countdownNumbers => Theme.of(this).textTheme.displayMedium;
  TextStyle? get countdownDaysNumbers => Theme.of(this).textTheme.displayLarge;
  TextStyle? get label => Theme.of(this).textTheme.labelSmall;
  TextStyle? get topic => Theme.of(this).textTheme.labelMedium;
}
