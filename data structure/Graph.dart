import 'Queue.dart';

class Graph<T> {
  int edges = 0;
  Map<T, List<T>> adjList = <T, List<T>>{};
  Set<T> markSet = new Set<T>();

  addEdge(T v, T w) {
    if (adjList[v] == null) {
      adjList[v] = <T>[];
    }
    adjList[v].add(w);
    if (adjList[w] == null) {
      adjList[w] = <T>[];
    }
    adjList[w].add(v);
    edges++;
  }

  dfs(T value) {
    markSet.clear();
    _dfs(value);
  }

  _dfs(T v) {
    markSet.add(v);
    if (adjList.containsKey(v)) {
      print("Visited vertex:  $v");
      for (T n in adjList[v]) {
        if (!markSet.contains(n)) {
          _dfs(n);
        }
      }
    }
  }

  bfs(T value) {
    markSet.clear();
    var queue = new Queue<T>();
    markSet.add(value);
    queue.enQueue(value);
    while (!queue.isEmpty) {
      var point = queue.deQueue();
      print("Visited vertex: $point");
      for (T n in adjList[point]) {
        if (!markSet.contains(n)) {
          markSet.add(n);
          queue.enQueue(n);
        }
      }
    }
  }

  String toString() {
    var s = '';
    for (T value in adjList.keys) {
      s += value.toString() + ' -> ';
      for (T n in adjList[v]) {
        s += n.toString() + ' ';
      }
      s += '\n';
    }
    return s;
  }

}