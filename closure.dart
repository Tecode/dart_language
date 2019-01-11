Function closure(num number) {
  return (num i) => number + i;
}

main() {
  print(closure(20)(5));
  print(closure(10)(10));
}