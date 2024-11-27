import '10.1_pair.dart';
import '10.2_square.dart';

void main() {
  // var pairString = Pair<String>("Alwindi", "Berlianto");
  // var pairInt = Pair<int>(1, 2);
  // var pairDouble = Pair<double>(1.0, 2.0);
  // var pairBool = Pair<bool>(true, true);

  // print(pairString.data1);
  // print(pairString.data2);
  // print(pairInt.data1);
  // print(pairInt.data2);
  // print(pairDouble.data1);
  // print(pairDouble.data2);
  // print(pairBool.data1);
  // print(pairBool.data2);

  var pairSquare = Pair<Square>(Square(12), Square(100));
  print(pairSquare.data1.side1);
  print(pairSquare.data2.side1);
}
