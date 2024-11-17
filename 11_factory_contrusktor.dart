import '11.1_class_factory_contrusktor.dart';

void main() {
  var person1 = Person("Alwindi", "Laki-laki", 21);
  var json = {
    'name': 'Alfandi',
    'gender': 'Laki-laki',
    'age': 28,
  };
  var person3 = Person("Josen", "Perempuan", 16);
  var json1 = {
    'name': 'Will',
    'gender': 'laki - laki',
    'age': 17,
  };

  var person4 = Person.fromJson(json1);
  var person2 = Person.fromJson(json);

  print(person1.name);
  print(person2.name);
  print(person3.name);
  print(person4.name);
}
