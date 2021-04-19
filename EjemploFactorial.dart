import 'dart:io';

void main() {
  print('---------------Numero Factorial---------------');
  print('Introduce numero:');
  double factorial = 1;
  double num1 = double.parse(stdin.readLineSync().toString());

  while (num1 != 0) {
    factorial = factorial * num1;
    num1--;
  }
  print("el numero factorial: $factorial");
}
