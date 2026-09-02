import 'package:countdown_timer/core/extensions/theme_extension.dart';
import 'package:flutter/material.dart';

class CustomPopMenuButton extends StatefulWidget {
  const CustomPopMenuButton({super.key});

  @override
  State<CustomPopMenuButton> createState() => _CustomPopMenuButtonState();
}

class _CustomPopMenuButtonState extends State<CustomPopMenuButton> {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      iconSize: 30,
      icon: Icon(Icons.more_vert, color: context.onSurface),
      onSelected: (value) {
        if (value == 'edit') {}
        if (value == 'delete') {}
      },
      itemBuilder: (context) => [
        PopupMenuItem(value: 'edit', child: Text('تعديل')),
        PopupMenuItem(value: 'delete', child: Text('حذف')),
      ],
    );
  }
}
