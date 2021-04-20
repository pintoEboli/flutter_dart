import 'dart:io';
import 'dart:math';

void main() {
  print("----- Validar si un nuemro es narcisista-------");
  String nume = stdin.readLineSync().toString();

  double suma = 0;

  for (int i = 0; i < nume.length; i++) {
    int numero = int.parse(nume.substring(i, i + 1));
    int longitud = nume.length;
    num elevado = pow(numero, longitud);
    suma = suma + elevado;
  }

  if (suma == int.parse(nume)) {
    print("$nume es narcisista");
  } else {
    print("$nume no es narcisista");
  }
}
