import 'dart:io';

void main() {
  print("Introduzca un numero: ");
  double num = double.parse(stdin.readLineSync().toString());

  while (num != 1) {
    if (num % 2 == 0) {
      num = num / 2;
    } else {
      num = num * 3 + 1;
    }

    print("n = $num");
  }
}
