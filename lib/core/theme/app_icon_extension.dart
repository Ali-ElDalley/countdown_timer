import 'package:flutter/material.dart';

class AppIconExtension extends ThemeExtension<AppIconExtension> {
  final IconData themeToggleIcon;
  const AppIconExtension({required this.themeToggleIcon});

  @override
  AppIconExtension copyWith({IconData? themeToggleIcon}) {
    return AppIconExtension(
      themeToggleIcon: themeToggleIcon ?? this.themeToggleIcon,
    );
  }

  @override
  AppIconExtension lerp(covariant ThemeExtension<AppIconExtension>? other, double t) {
    return this;
  }
}
