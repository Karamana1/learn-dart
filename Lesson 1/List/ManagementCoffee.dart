import 'dart:io';

void main() async {
  print("Welcome to Coffee Shop");
  await Future.delayed(Duration(seconds: 1));
  print("1");
  await Future.delayed(Duration(seconds: 1));
  print("2");
  await Future.delayed(Duration(seconds: 1));
  print("3");
  print("Please select your coffee");
  //create list management coffee
  List<Map<String, dynamic>> list = [];
  //create menu
  List<Map<String, dynamic>> menu = [
    {"id": 1, "name": "Espresso", "price": 1000, 'Image': 'espresso.jpg'},
    {"id": 2, "name": "Cappuccino", "price": 1500, 'Image': 'cappuccino.jpg'},
    {"id": 3, "name": "Latte", "price": 2000, 'Image': 'latte.jpg'},
    {"id": 4, "name": "Mocha", "price": 2500, 'Image': 'mocha.jpg'},
    {"id": 5, "name": "Americano", "price": 3000, 'Image': 'americano.jpg'},
    {"id": 6, "name": "Macchiato", "price": 3500, 'Image': 'macchiato.jpg'},
  ];

  menu.removeAt(0);

  //create menu
  for (var i in menu) {
    print("\n");
    i.forEach((key, value) {
      print('\n\t\t$key\t:$value');
    });
  }
}
