import '12_inheritance.dart';

void main() {
  var test1 = ParentClass("Alwindi");
  var test2 = ChildClass("Justin");
  var test3 = Heheclass("Haha", 12);
  var test4 = ChildClassTwo("elgo");

  print(test1);
  print(test1.data);
  test1.printClass();

  print(test2);
  print(test2.data);
  test2.printClass();

  print(test3);
  print(test3.data);
  print(test3.value);
  test3.printClass();

  print(test4);
  print(test4.data);
  test4.printClass();
}
