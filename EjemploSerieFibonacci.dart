import 'dart:io';

void main() {
  print(
      "--------Introduzca hasta que numero decea la secuencia FIBONACCI---------");
  print("Introduzca el numero:");
  double num = double.parse(stdin.readLineSync().toString());

  int num1 = 0;
  int num2 = 1;
  int suma = num1 + num2;

  while (suma < num) {
    num1 = num2;
    num2 = suma;
    print("n: $suma");
    suma = num1 + num2;
  }
}
