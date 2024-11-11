void main() {
  // function (a,b) => [a,b, a + b]

  var lists = getLists(4, 5);
  print(lists);

//========================================

  for (var i = 0; i < lists.length; i++) {
    print(lists[i]);
  }

  //or

  lists.forEach((element) => print(element));

//========================================

  // var map = getMaps("Putra", "Yuda");
  // print(map);
}

List<int> getLists(int a, int b) {
  int c = a + b;
  List<int> lists = [a, b, c];

  return lists;
}

Map<String, String> getMaps(String firstName, String lastName) {
  String fullname = "$firstName $lastName";
  var maps = <String, String>{
    "firstName": firstName,
    "lastName": lastName,
    "fullName": fullname,
  };

  return maps;
}
