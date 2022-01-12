void main(List<String> args) {
  var book = Books.one();
  print(book.hashCode);
}

class Books {
  Books.one();
}
