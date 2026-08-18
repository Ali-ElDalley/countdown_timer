class CountdownItem {
  final String id;
  final String title;
  final String? description;
  final DateTime targetDateTime;
  final int notificationId;
  final bool isNotified;
  CountdownItem({
    required this.id,
    required this.title,
    this.description,
    required this.targetDateTime,
    this.isNotified = false,
    required this.notificationId,
  });
  factory CountdownItem.create({
    required String title,
    String? description,
    required DateTime targetDateTime,
  }) {
    final String id = DateTime.fromMillisecondsSinceEpoch.toString();
    return CountdownItem(
      id: id,
      title: title,
      description: description,
      targetDateTime: targetDateTime,
      notificationId: id.hashCode & 0x7FFFFFFF,
    );
  }

  CountdownItem copyWith({
    String? title,
    String? description,
    DateTime? targetDateTime,
    bool? isNotified,
  }) {
    return CountdownItem(
      id: id,
      title: title ?? this.title,
      description: description ?? this.description,
      targetDateTime: targetDateTime ?? this.targetDateTime,

      notificationId: notificationId,
      isNotified: isNotified ?? this.isNotified,
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'description': description,
    'targetDateTime': targetDateTime.toIso8601String(),
    'notificationId': notificationId,
    'isNotified': isNotified,
  };

  factory CountdownItem.fromJson(Map<String, dynamic> json) {
    return CountdownItem(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      targetDateTime: DateTime.parse(json['targetDateTime']),
      notificationId: json['notificationId'],
      isNotified: json['isNotified'] ?? false,
    );
  }
}
