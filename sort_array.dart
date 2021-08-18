void swap(List array, int a, int b) {
  num temp;
  temp = array[a];
  array[a] = array[b];
  array[b] = temp;
}

void main() {
  List<num> array = [4, 5, 0, 5, 45, 36, 11];
  final length = array.length;

  for (int index = 0; index < length; ++index) {
    for (int index_col = 0; index_col < length - index - 1; ++index_col) {
      if (array[index_col] > array[index_col + 1]) {
        swap(array, index_col, index_col + 1);
      }
    }
  }

  array.forEach((value) => print(value));
}
