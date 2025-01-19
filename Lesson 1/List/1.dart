import 'dart:io';

void main() {
  List<Map<String, dynamic>> mymap = [
    {"id": 1, "name": "Aung Aung", "age": 20, "sex": "male"},
    {"id": 2, "name": "Su Su", "age": 22, "sex": "female"},
    {"id": 3, "name": "Mg Mg", "age": 25, "sex": "male"}
  ];
  for (var i in mymap) {
    print(i);

    i.forEach((key, value) {
      print("$key : $value");
    });
  }
}
