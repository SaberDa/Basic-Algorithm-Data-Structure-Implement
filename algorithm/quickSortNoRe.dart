import 'dart:math';

class Stack<T> {
  List<T> _dataStore = <T>[];

  int get size => _dataStore.length;

  bool get isEmpty => _dataStore.isEmpty;

  push(T element) {
    _dataStore.insert(0, element);
  }

  T pop() {
    if (_dataStore.isNotEmpty) {
      return _dataStore.removeAt(0);
    }
    return null;
  }

  T peek() {
    if (_dataStore.isNotEmpty) {
      return _dataStore.elementAt(0);
    }
    return null;
  }

  String toString() {
    return _dataStore.toString();
  }
}

int partition(List list, int left, int right) {
  int temp;
  int cur = left;
  int key = right;
  if (cur > key) {
    return 0;
  }
  temp = list[cur];
  while (cur < key) {
    while (key > cur && list[key] > temp) {
      key--;
    }
    if (cur < key) {
      list[cur] = list[key];
      cur++;
    }
    while (cur < key && temp > list[cur]) {
      cur++;
    }
    if (cur < key) {
      list[key] = list[cur];
      key--;
    }
  }
  list[cur] = temp;
  return cur;
}

void quickSortNoRe(List list) {
  if (list == null || list.length == 1) {
    return;
  }
  Stack<int> s = new Stack<int>();
  s.push(0);
  s.push(list.length - 1);
  while (!s.isEmpty) {
    int right = s.pop();
    int left = s.pop();
    if (left <= right) {
      var i = partition(list, left, right);
      if (left < i - 1) {
        s.push(left);
        s.push(i - 1);
      }
      if (i + 1 < right) {
        s.push(i + 1);
        s.push(right);
      }
    }
  }
}

void main() {
  var list = List<int>();
  Random random = new Random();
  for (var i = 0; i < 1000; i++) {
    list.add(random.nextInt(1000));
  }
  print(list.toString());
  quickSortNoRe(list);
  print(list.toString());
}
