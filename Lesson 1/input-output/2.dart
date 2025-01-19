import 'dart:io';

void main() {
  int u_old, u_new;
  double total, pay;

  print("Enter Old Unit : ");
  u_old = int.parse(stdin.readLineSync()!);

  print("Enter New Unit : ");
  u_new = int.parse(stdin.readLineSync()!);

  total = (u_new - u_old).toDouble();

  pay = (total >= 1 && total <= 10)
      ? total * 500
      : (total > 10 && total <= 20)
          ? 10 * 500 + (total - 10) * 550
          : (total > 20 && total <= 30)
              ? 10 * 500 + 10 * 550 + (total - 20) * 600
              : (total > 30 && total <= 40)
                  ? 10 * 500 + 10 * 550 + 10 * 600 + (total - 30) * 650
                  : (total > 40 && total <= 50)
                      ? 10 * 500 +
                          10 * 550 +
                          10 * 600 +
                          10 * 650 +
                          (total - 40) * 700
                          : 10 * 500 +
                          10 * 550 +
                          10 * 600 +
                          10 * 650 +
                          10 * 700 +
                          (total - 50) * 750;

  print("Total Units: $total");
  print("Bill Amount: $pay MMK");
}
