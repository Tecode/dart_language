void main() {
  print('h e l l ow or ld'.toSortable());
}

extension StringExtensions on String {
  String toSortable() {
    return this.toLowerCase().replaceAll(' ', '');
  }
}