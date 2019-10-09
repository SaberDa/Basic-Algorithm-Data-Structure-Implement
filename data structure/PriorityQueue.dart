// 最小优先队列实现

class QueueItem<T> {

  T item;
  int priority;

  QueueItem(this.item, this.priority);

  String toString() {
    return '$item - $priority';
  }

}

class PriorityQueue<T> {
  List<QueueItem<T>> _dataStore = <QueueItem<T>>[];

  int get size => _dataStore.length;

  bool get isEmpty => _dataStore.isEmpty;

  enQueue(T item, int priority) {
    QueueItem queueItem = new QueueItem<T>(item, priority);
    bool flag = false;
    for (int i = 0; i < _dataStore.length; i++) {
      if (priority < _dataStore[i].priority) {
        flag = true;
        _dataStore.insert(i, queueItem);
        break;
      }
    }
    if (!flag) {
      _dataStore.add(queueItem);
    }
  }

  T deQueue() {
    if (_dataStore.isNotEmpty) {
      return _dataStore.removeAt(0).item;
    }
    return null;
  }

  T get front {
    if (_dataStore.isNotEmpty) {
      return _dataStore.first.item;
    }
    return null;
  }

  T get end {
    if (_dataStore.isNotEmpty) {
      return _dataStore.last.item;
    }
    return null;
  }

  clear() {
    return _dataStore.clear();
  }

  String toString() {
    return _dataStore.toString();
  }

}