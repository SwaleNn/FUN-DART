void main() {
  var danang = Person("alwindi", "laki-laki", "20");

  print("nama : ${danang.name}");
  print("Gender : ${danang.gender}");
  print("Age : ${danang.age}");

  danang.eat("Sate");
  danang.code();
}

class Person {
  //fields
  final String name;
  final String gender;
  final String age;

  // constructor
  Person(this.name, this.gender, this.age);

  // method
  void eat(String food) {
    print("$name sedang makan $food");
  }

  void code() {
    print("$name sedang ngoding");
  }
}
