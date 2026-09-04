import 'package:flutter/material.dart';

extension AppThemeContext on BuildContext {
  ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showSnackBar({
    required Widget content,
    Color? backgroundColor,
  }) {
    return ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(content: content, backgroundColor: backgroundColor),
    );
  }
}
