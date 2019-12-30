import 'dart:math';

main() {
  var list = ['optionA', 'optionB', 'optionC', 'optionD'];
  var element = (list.toList()..shuffle());
  print(element);
}
