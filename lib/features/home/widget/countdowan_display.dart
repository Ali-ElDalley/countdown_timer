import 'package:countdown_timer/core/extensions/theme_extension.dart';
import 'package:flutter/material.dart';

class CountdownDisplay extends StatelessWidget {
  const CountdownDisplay({
    super.key,
    required this.days,
    required this.hours,
    required this.minutes,
    required this.seconds,
  });

  final int days;
  final int hours;
  final int minutes;
  final int seconds;

  @override
  Widget build(BuildContext context) {
    final units = [
      _CountdownUnit(
        value: days,
        label: 'DAYS',
        style: context.countdownDaysNumbers,
      ),
      _CountdownUnit(value: hours, label: 'HRS'),
      _CountdownUnit(value: minutes, label: 'MINS'),
      _CountdownUnit(value: seconds, label: 'SECS'),
    ];

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (var i = 0; i < units.length; i++) ...[
          units[i],
          if (i != units.length - 1)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Text(
                ':',
                style: context.bodyMedium?.copyWith(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
        ],
      ],
    );
  }
}

class _CountdownUnit extends StatelessWidget {
  const _CountdownUnit({required this.value, required this.label, this.style});

  final int value;
  final String label;
  final TextStyle? style;

  String _formatValue() {
    if (value > 999) return '+999';
    return value.toString().padLeft(2, '0');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(_formatValue(), style: style ?? context.countdownNumbers),
        Text(label, style: context.label),
      ],
    );
  }
}
