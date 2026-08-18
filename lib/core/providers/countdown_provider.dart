import 'package:countdown_timer/core/models/countdown_item.dart';
import 'package:flutter/foundation.dart';

class CountdownProvider extends ChangeNotifier {
  final List<CountdownItem> _items = [];
  List<CountdownItem> get getItems => List.unmodifiable(_items);

  void _sortByNearest() {
    _items.sort((a, b) => a.targetDateTime.compareTo(b.targetDateTime));
  }

  CountdownItem? getItemById(String id) {
    try {
      return _items.firstWhere((item) => item.id == id);
    } catch (e) {
      return null;
    }
  }

  void addItem({
    required String title,
    String? description,
    required DateTime targetDateTime,
  }) {
    final newItem = CountdownItem.create(
      title: title,
      description: description,
      targetDateTime: targetDateTime,
    );
    _items.add(newItem);
    _sortByNearest();
    notifyListeners();
  }

  void updateItem({
    required String id,
    String? title,
    String? description,
    DateTime? targetDateTime,
  }) {
    final index = _items.indexWhere((item) => item.id == id);
    if (index == -1) return;
    _items[index] = _items[index].copyWith(
      title: title,
      description: description,
      targetDateTime: targetDateTime,
    );
    _sortByNearest();
    notifyListeners();
  }

  void deleteItem(String id) {
    _items.removeWhere((item) => item.id == id);
    _sortByNearest();
    notifyListeners();
  }

  void markAsNotified(String id) {
  final index=  _items.indexWhere((item) => item.id == id);
  if (index == -1) return;
    _items[index] = _items[index].copyWith(
     isNotified:! _items[index].isNotified
    );
    notifyListeners();
  }
}
