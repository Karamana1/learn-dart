import 'dart:io';

void main() {
  int? id;
  String? name;
  String? Sex;
  String? Address;
  print("=============================== input ==============================");
  stdout.write("\tEnter your ID     : ");
  id = int.parse(stdin.readLineSync()!);

  stdout.write("\tEnter your Name   : ");
  name = stdin.readLineSync();

  stdout.write("\tEnter your Sex    : ");
  Sex = stdin.readLineSync();

  stdout.write("\tEnter your Age    : ");
  int? Age;
  Age = int.parse(stdin.readLineSync()!);

  stdout.write("\tEnter your Address: ");
  Address = stdin.readLineSync();

  int? score;
  stdout.write("Enter Score : ");
  score = int.parse(stdin.readLineSync()!);

  print(
      '\n ============================== ouput ==============================');
  print("\tID     : $id");
  print("\tName   : $name");
  print("\tAge    : $Age");
  print("\tSex    : $Sex");
  print("\tAddress: $Address");
  print(
      '\n ===================================================================');

  if (Age <= 40) {
    print("Hello Mr.$name");
  } else if (Age > 40) {
    print("Hello Uncle.$name");
  } else {
    print("Hi Mrs.$name");
  }
  String grade = (score >= 90)
      ? "A"
      : (score >= 80)
          ? "B"
          : (score >= 70)
              ? "C"
              : "F";
  print('Grade : $grade');
}
