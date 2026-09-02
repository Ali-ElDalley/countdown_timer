import 'package:countdown_timer/core/extensions/theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';

class HomeEmptyState extends StatelessWidget {
  const HomeEmptyState({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          CircleAvatar(
            radius: 85,
            backgroundColor: context.surface,
            child: Icon(
              Icons.hourglass_empty_outlined,
              size: 80,
              color: context.neutral,
            ),
          ),
          Gap(24),
          Text("No countdowns yet", style: context.body),
          Gap(8),
          Text(
            "Create your first timer to start\ntracking important upcoming\nevents.",
            textAlign: TextAlign.center,
            style: context.bodyMedium,
          ),
          Spacer(flex: 2),
        ],
      ),
    );
  }
}
