extension DateTimeExtension on DateTime {
   String toDisplayString() {
    const months = [
      'Jan',
      'Feb',
      'Mar',
      'Apr',
      'May',
      'Jun',
      'Jul',
      'Aug',
      'Sep',
      'Oct',
      'Nov',
      'Dec',
    ];
    final hour12 = hour % 12 == 0 ? 12 : hour % 12;
    final period = hour >= 12 ? 'PM' : 'AM';
    final minute = this.minute.toString().padLeft(2, '0');
    return '$day ${months[month - 1]}, $year - $hour12:$minute $period';
  }
}
