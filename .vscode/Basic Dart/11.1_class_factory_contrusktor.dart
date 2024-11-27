class Person {
  final String name;
  final String gender;
  final int age;

  Person(this.name, this.gender, this.age);

  factory Person.fromJson(Map<String, dynamic> json) {
    final String name = json["name"] as String;
    final String gender = json["gender"] as String;
    final int age = json["age"] as int;

    return Person(name, gender, age);
  }
}
