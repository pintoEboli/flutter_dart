import 'dart:io';

void main() {
  var premios = [
    166116.06,
    133948.48,
    32353.38,
    1528.22,
    123.13,
    66.37,
    44.89,
    15.91
  ];

  try {
    print("--- Aceso al premio del EURO MILLON --------------------");
    print("Introduzca el número del premio a mostrar:");
    int op = int.parse(stdin.readLineSync().toString());
    print("Premio: ${premios[op - 1]}");
  } on RangeError {
    print("Error: el indice del premio no se encuentra en la lista");
  } catch (e) {
    print(e);
  } finally {
    print("Entro");
  }
}
