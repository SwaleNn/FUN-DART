class ParentClass {
  // Deklarasi variabel 'data' yang bertipe String dan bersifat final (nilainya tidak bisa diubah setelah diinisialisasi).
  final String data;

  // Konstruktor ParentClass. Argumen 'this.data' menginisialisasi variabel 'data' dengan nilai yang diberikan saat membuat objek.
  ParentClass(this.data);

  // Metode 'printClass' untuk mencetak "hello" ke konsol.
  void printClass() {
    print("hello");
  }
}

class ChildClass extends ParentClass {
  // Deklarasi variabel 'data' yang sama dengan ParentClass. Ini akan menyebabkan error karena 'data' di ParentClass sudah final.
  final String data;

  // Konstruktor ChildClass. 'super(data)' memanggil konstruktor ParentClass untuk menginisialisasi variabel 'data' yang diwarisi.
  ChildClass(this.data) : super(data);
}

class Heheclass extends ParentClass {
  // Deklarasi variabel 'data' yang sama dengan ParentClass.
  final String data;

  // Deklarasi variabel 'value' yang bertipe int dan bersifat final.
  final int value;

  // Konstruktor Heheclass. 'super(data)' memanggil konstruktor ParentClass untuk menginisialisasi variabel 'data' yang diwarisi.
  Heheclass(this.data, this.value) : super(data);

  // Metode 'printValue' untuk mencetak nilai 'value' ke konsol.
  void printValue() {
    print("this is value : $value");
  }
}

class ChildClassTwo extends ParentClass {
  // Konstruktor ChildClassTwo
  ChildClassTwo(String data) : super(data);

  // Metode 'printData' untuk mencetak nilai 'data' yang diwarisi dari ParentClass
  void printData() {
    print("Data: $data");
  }
}

class Polymorphism extends ParentClass {
  Polymorphism(String data) : super(data);

  @override
  void printClass() {
    print("hello ini adalah class baru");
  }
}
