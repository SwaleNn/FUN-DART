class Car {
  String _name;
  String _merk;
  int fuel;
  String color;
  final String carType;
  final int totalSeat;
  final bool isNewCar;

  Car(
    this._name,
    this._merk,
    this.fuel,
    this.color,
    this.carType,
    this.totalSeat,
    this.isNewCar,
  );

  String get name => _name;

  set name(String newName) => this._name = newName;

  String get merk => _merk;

  set merk(String newMerk) => this._merk = merk;

  void start() {
    fuel -= 10;
    print("Mobil $_name hidup");
  }

  void run() {
    fuel -= 50;
    print("Mobil $_name berjalan");
  }

  void turnOff() {
    print("Mobil mati");
  }

  String changeCarColor(String newColor) {
    print("Warna mobil berganti dari $color menjadi $newColor");
    color = newColor;
    return color;
  }

  int fillFuel(int additionalFuel) {
    print("Bahan bakar mobil sebelum diisi $fuel");
    fuel += additionalFuel;
    print("Bahan bakar mobil setelah diisi $fuel");
    return fuel;
  }
}
