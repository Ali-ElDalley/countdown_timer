import 'package:countdown_timer/core/extensions/theme_extension.dart';
import 'package:countdown_timer/features/add_edit/widget/add_edit_app_bar.dart';
import 'package:countdown_timer/features/add_edit/widget/custom_button.dart';
import 'package:countdown_timer/features/add_edit/widget/custom_text_field.dart';
import 'package:countdown_timer/features/shared/widget/date_time_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';

class AddEditScreen extends StatefulWidget {
  const AddEditScreen({super.key});

  @override
  State<AddEditScreen> createState() => _AddEditScreenState();
}

class _AddEditScreenState extends State<AddEditScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _title = TextEditingController();
  final TextEditingController _desc = TextEditingController();
  bool get _canSubmit => _title.text.isNotEmpty && selectedDateTime != null;
  DateTime? selectedDateTime;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AddEditAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              CustomTextField(
                text: "What are you counting down to?",
                hint: "e.g. Summer Vacation, Graduation",
                controller: _title,
                onChanged: (_) => setState(() {}),
                validator: (v) {
                  if (v == null || v.isEmpty) return "The title is required";
                },
              ),
              Gap(32),
              CustomTextField(
                text: "Description (optional)",
                hint: "Add details...",
                desc: true,
                controller: _desc,
              ),
              Gap(38),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Text("When is it?", style: context.body),
                  Gap(12),
                  DateTimeField(
                    initialValue: selectedDateTime,
                    onSaved: (v) => setState(() => selectedDateTime = v),
                    onChanged: (v) => setState(() => selectedDateTime = v),
                    validator: (value) =>
                        value == null ? "Please select a date and time" : null,
                  ),
                ],
              ),
              Gap(60),
              CustomButton(
                backgroundColor: _canSubmit ? context.primary : context.neutral,
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
