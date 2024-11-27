void main() {
  // (type_1, type_2, ..., type_n) record = (value_1, value_2, ... value_n);

  (String, int) record = ("Code", 123);
  print(record);
  print(record.$1);
  print(record.$2);

  ({bool isTrue, double gpa}) record1 = (isTrue: true, gpa: 4.0);

  print(record1);
  print(record1.isTrue);
  print(record1.gpa);
}
