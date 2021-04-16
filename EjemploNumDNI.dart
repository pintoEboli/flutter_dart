import 'dart:io';

void main() {
  print('---------------Introduce el número DNI---------------');
  print('Introduce el numero sin letra:');

  int num = int.parse(stdin.readLineSync().toString());
  const String letras = "TRWAGMYFPDXBNJZSQVHLCKET";

  int result = (num % 23);
  print("reult: $result");

  print("La letra del dni es: " + letras.substring(result, result + 1));
}
