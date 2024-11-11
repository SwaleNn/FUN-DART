void main() {
  var list1 = [3, 44, 19, 26, 77];
  var list2 = [65, 21, 109, 9, 77];

  List<int> list3 = [];

  for (var index = 0; index < list1.length; index++) {
    var temp = list1[index] + list2[index];
    list3.add(temp);
  }

  print(list3);
}


// List<int> getLists(int a, int b) {
//   int c = a + b;
//   List<int> lists = [a, b, c];

//   return lists;
// }