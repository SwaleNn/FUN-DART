void main() {
  var danang = Person("alwindi", "laki-laki", 20, "test");

  print("nama : ${danang.name}");
  print("Gender : ${danang.gender}");
  print("Age : ${danang._age}");

  danang.eat("Sate");
  danang.code();

  print(danang._age);
  danang.age = 18;
  print(danang._age);
  danang._names = "justin";
}

class Person {
  //fields
  String name;
  String
      _names; // jika menqggunakan _(underscore) pada depan variabel maka itu akan membuat object menjadi private dan tidak akan bisa digunakan di luar class atau luar object
  String gender;
  int _age;

  // constructor
  Person(this.name, this.gender, this._age, this._names);

  //getter (membuat private code supaya bisa digunakan menjadi public tanpa mengubah variabel)
  String get personName => _names;

  //setter (alternatif lain dari getter)
  set age(int newAge) => this._age = newAge;

  // method
  void eat(String food) {
    print("$name sedang makan $food");
  }

  void code() {
    print("$name sedang ngoding");
  }

  void test() {
    print(_names);
  }
}
