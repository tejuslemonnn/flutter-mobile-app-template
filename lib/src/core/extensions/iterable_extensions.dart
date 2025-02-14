import 'dart:math';

extension IterableExtension<T> on Iterable<T> {
  T? firstWhereIndexedOrNull(bool Function(int index, T element) test) {
    var index = 0;
    for (var element in this) {
      if (test(index++, element)) return element;
    }
    return null;
  }
}

extension UnaryNumber on List<Object> {
  bool get isEven => length.isEven;
  bool get isOdd => !isEven;
  static bool isListEven(List<Object> list) => list.isEven;
}

extension RandomListItem<T> on List<T> {
  T? getRandom() => isEmpty
      ? null
      : length == 1
          ? first
          : this[Random().nextInt(length)];
}
