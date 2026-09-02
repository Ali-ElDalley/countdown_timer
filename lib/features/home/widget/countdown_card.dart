import 'package:countdown_timer/core/extensions/theme_extension.dart';
import 'package:countdown_timer/features/home/widget/countdowan_display.dart';
import 'package:countdown_timer/features/home/widget/custom_pop_menu_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';

class CountdownCard extends StatefulWidget {
  const CountdownCard({super.key});

  @override
  State<CountdownCard> createState() => _CountdownCardState();
}

class _CountdownCardState extends State<CountdownCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},

      child: Container(
        width: 420,
        height: 220,
        decoration: BoxDecoration(
          color: context.surface,
          borderRadius: BorderRadius.circular(16),
        ),
        padding: EdgeInsets.all(24),
        child: Column(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Vacation to Hawaii",
                          style: context.headlineMedium,
                          textAlign: TextAlign.start,
                        ),
                        Text("OCT 15, 2024", style: context.bodyMedium),
                      ],
                    ),
                    Spacer(),
                    CustomPopMenuButton(),
                  ],
                ),
              ],
            ),
            Spacer(),
            CountdownDisplay(days: 1000, hours: 15, minutes: 44, seconds: 11),
            Spacer(),
            LinearProgressIndicator(
              value: 0.6,
              backgroundColor: context.neutral,
              color: context.primary,
              minHeight: 4,
              borderRadius: BorderRadius.circular(2),
            ),
          ],
        ),
      ),
    );
  }
}
