import 'dart:math';

void swap(List list, int i, int j) {
  int temp = list[i];
  list[i] = list[j];
  list[j] = temp;
}

int partition(List list, int left, int right) {
  if (list == null || list.length == 0) {
    return 0;
  }
  int flat = list[right];
  int low = left - 1;
  for (int i = left; i < right; i++) {
    if (list[i] < flat) {
      low++;
      swap(list, low, i);
    }
  }
  swap(list, low + 1, right);
  return low + 1;
}

void quickSortRecu(List list, int left, int right) {
  if (left > right) {
    return;
  }
  int i = partition(list, left, right);
  quickSortRecu(list, left, i - 1);
  quickSortRecu(list, i + 1, right);
}

void main() {
  var list = List<int>();
  Random random = new Random();
  for (var i = 0; i < 1000; i++) {
    list.add(random.nextInt(1000));
  }
  print(list.toString());
  quickSortRecu(list, 0, 19);
  print(list.toString());
}
