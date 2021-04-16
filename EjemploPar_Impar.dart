import 'dart:io';

void main() {
  print('---------------Numeros Par o Impar---------------');
  print('Introduce numero 1:');
  // ignore: prefer_final_locals
  int num1 = int.parse(stdin.readLineSync().toString());

  if (num1 % 2 == 0) {
    print('El número es par: $num1');
  } else {
    print('El número es impar: $num1');
  }
}
