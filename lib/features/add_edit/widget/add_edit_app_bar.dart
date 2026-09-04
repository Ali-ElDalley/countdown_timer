import 'package:countdown_timer/core/extensions/theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';

class AddEditAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool? isEdit;
  const AddEditAppBar({super.key, this.isEdit = false});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: context.background,
      automaticallyImplyLeading: false,
      leading: Padding(
        padding: padding,
        child: IconButton(
          onPressed: () {},
          icon: Icon(Icons.close, color: context.onSurface, size: 30),
        ),
      ),
      title: Padding(
        padding: padding,
        child: Row(
          children: [
            Gap(32),
            Text(
              isEdit! ? "Edit Countdown" : "Add Countdown",
              style: context.headlineMedium?.copyWith(
                color: context.primary.withValues(alpha: 0.7),
              ),
            ),
          ],
        ),
      ),
    );
  }

  static const EdgeInsetsGeometry padding = EdgeInsetsGeometry.symmetric(
    horizontal: 24,
    vertical: 11,
  );
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
