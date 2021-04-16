import 'dart:io';

void main() {
  print('---------------MEDIA DE NUMEROS---------------');
  print('Introduce numero 1:');
  int num1 = int.parse(stdin.readLineSync().toString());
  print('Introduce numero 2:');
  int num2 = int.parse(stdin.readLineSync().toString());
  print('Introduce numero 3:');
  int num3 = int.parse(stdin.readLineSync().toString());

  double result = (num1 + num2 + num3) / 3;
  print('La suma de los numeros es : $result');
}
