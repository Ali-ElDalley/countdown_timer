import 'package:countdown_timer/core/extensions/theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';

class CustomTextField extends StatelessWidget {
  final String text;
  final String hint;
  final bool? desc;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final TextEditingController? controller;
  const CustomTextField({
    super.key,
    required this.text,
    required this.hint,
    this.desc = false,
    this.controller, this.validator, this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text, style: context.body),
        Gap(12),
        TextFormField(
          controller: controller,
          validator: validator,
          onChanged:onChanged ,
          maxLines: desc! ? 4 : 1,
          keyboardType: TextInputType.multiline,
          textAlignVertical: TextAlignVertical.top,
          decoration: InputDecoration(
            hint: Text(hint, style: TextStyle(fontSize: 20)),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: context.neutral.withValues(alpha: 0.8),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 2, color: context.primary),
            ),
          ),
        ),
      ],
    );
  }
}
