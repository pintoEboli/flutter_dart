import 'dart:io';

void main() {
  print('---------------SUMA DE ENTEROS---------------');
  print('Introduce numero 1:');
  int num1 = int.parse(stdin.readLineSync().toString());
  print('Introduce numero 2:');
  int num2 = int.parse(stdin.readLineSync().toString());
  int result = num1 + num2;
  print('La suma de los numeros es : $result');
}
