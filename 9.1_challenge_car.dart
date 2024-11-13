import '9_challenge_car.dart';

void main() {
  var car = Car("Avanza", "Toyota", 100, "Green", "Matic", 6, true);
  print(car.fuel);
  car.start();
  car.run();
  car.turnOff();
  print(car.fuel);
  print(car.fillFuel(200));

  print(car.color);
  print(car.changeCarColor("Blue"));
  print(car.name);
  print(car.merk);

  car.name = "Hyundai";
  car.merk = "Suzuki";

  print(car.name);
  print(car.merk);
}
