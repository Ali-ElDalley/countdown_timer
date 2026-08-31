import 'package:countdown_timer/core/theme/app_icon_extension.dart';
import 'package:flutter/material.dart';

extension AppThemeContext on BuildContext {
  IconData get themeIcon =>
      Theme.of(this).extension<AppIconExtension>()!.themeToggleIcon;
}
