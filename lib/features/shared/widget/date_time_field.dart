
import 'package:countdown_timer/core/extensions/context_extension.dart';
import 'package:countdown_timer/core/extensions/date_time_extension.dart';
import 'package:countdown_timer/core/extensions/theme_extension.dart';
import 'package:flutter/material.dart';

class DateTimeField extends FormField<DateTime> {
  DateTimeField({
    Key? key,
    DateTime? initialValue,
    FormFieldValidator<DateTime>? validator,
    FormFieldSetter<DateTime>? onSaved,
    ValueChanged<DateTime?>? onChanged,
    AutovalidateMode autovalidateMode = AutovalidateMode.onUserInteraction,
  }) : super(
         key: key,
         initialValue: initialValue,
         validator: validator,
         onSaved: onSaved,

         autovalidateMode: autovalidateMode,
         builder: (FormFieldState<DateTime> field) {
           Future<void> pickDateTime() async {
             final now = DateTime.now();

             final date = await showDatePicker(
               context: field.context,
               initialDate: field.value ?? now,
               firstDate: now,
               lastDate: DateTime(now.year + 10),
             );
             if (date == null || !field.context.mounted) return;

             final time = await showTimePicker(
               context: field.context,
               initialTime: field.value != null
                   ? TimeOfDay.fromDateTime(field.value!)
                   : TimeOfDay.now(),
             );
             if (time == null || !field.context.mounted) return;

             final combined = DateTime(
               date.year,
               date.month,
               date.day,
               time.hour,
               time.minute,
             );

             if (combined.isBefore(DateTime.now())) {
               field.context.showSnackBar(
                 backgroundColor: field.context.tertiary,
                 content: const Text(
                   'Please choose a future date and time.',
                   style: TextStyle(color: Colors.white),
                 ),
               );
               return;
             }

             field.didChange(combined);
             onChanged?.call(combined);
           }

           return InkWell(
             onTap: () async => await pickDateTime(),
             borderRadius: BorderRadius.circular(16),
             child: Container(
               width: double.infinity,
               padding: const EdgeInsets.symmetric(
                 horizontal: 16,
                 vertical: 14,
               ),
               decoration: BoxDecoration(
                 border: Border.all(
                   color: field.errorText != null
                       ? field.context.tertiary
                       : field.context.neutral.withValues(alpha: 0.3),
                 ),
                 borderRadius: BorderRadius.circular(16),
               ),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Row(
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children: [
                       Expanded(
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           mainAxisSize: MainAxisSize.min,
                           children: [
                             Text(
                               field.value == null
                                   ? 'Select Date & Time'
                                   : field.value!.toDisplayString(),
                               style: field.context.topic,
                             ),
                             const SizedBox(height: 4),
                             Text(
                               field.value == null
                                   ? 'Tap to open calendar'
                                   : 'Tap to change',
                               style: field.context.bodyMedium?.copyWith(
                                 color: field.context.neutral,
                               ),
                             ),
                           ],
                         ),
                       ),
                       Icon(Icons.calendar_today, color: field.context.neutral),
                     ],
                   ),
                   if (field.errorText != null) ...[
                     const SizedBox(height: 6),
                     Text(
                       field.errorText!,
                       style: field.context.bodyMedium?.copyWith(
                         color: field.context.tertiary,
                       ),
                     ),
                   ],
                 ],
               ),
             ),
           );
         },
       );
}
