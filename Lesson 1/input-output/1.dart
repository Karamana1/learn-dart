import 'dart:io';

void main() {
  print("Hello Flutter");
  String? name;
  print("Enter Name : ");
  name = stdin.readLineSync()!;

  print("Name : " + name);
}
