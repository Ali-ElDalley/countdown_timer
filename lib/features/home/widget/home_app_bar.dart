import 'package:countdown_timer/core/extensions/theme_extension.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatefulWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  State<HomeAppBar> createState() => _HomeAppBarState();
  static const EdgeInsetsGeometry padding = EdgeInsetsGeometry.symmetric(
    horizontal: 24,
    vertical: 11,
  );
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _HomeAppBarState extends State<HomeAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: context.background,
      automaticallyImplyLeading: false,
      leadingWidth: 300,
      leading: Padding(
        padding: HomeAppBar.padding,
        child: Row(
          spacing: 8,
          children: [
            Icon(Icons.timer_outlined, color: context.primary),
            Text(
              "Countdown",
              style: context.headlineMedium?.copyWith(color: context.primary),
            ),
          ],
        ),
      ),
      actions: [
        Padding(
          padding: HomeAppBar.padding,
          child: Icon(context.themeIcon, color: context.primary, size: 26),
        ),
      ],
    );
  }
}
