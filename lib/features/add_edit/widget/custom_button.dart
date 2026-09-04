import 'package:countdown_timer/core/extensions/theme_extension.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color? backgroundColor;
  final void Function()? onPressed;
  const CustomButton({super.key, this.onPressed, this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: ElevatedButton.icon(
        onPressed: onPressed,
        icon: const Icon(Icons.save_outlined),
        label: const Text('Save Countdown'),
        style: ElevatedButton.styleFrom(
          backgroundColor:backgroundColor,
          foregroundColor: Colors.white,
          shape: const StadiumBorder(),
          textStyle: context.body?.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
