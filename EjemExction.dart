import 'dart:io';

void main() {
  try {
    print("Introduce dividendo:");
    int dividendo = int.parse(stdin.readLineSync().toString());
    print("Introduce divisor:");
    int divisor = int.parse(stdin.readLineSync().toString());
    // El operador ~/ divide y retorna un resultado entero
    int resultado = dividendo ~/ divisor;

    print("Resultado división: $resultado");
  } on FormatException {
    print("Error, debes introducir un número");
    //} on IntegerDivisionByZeroException {
    //print("¡¡¡Error!!!. El divisor no puede ser cero");
  } catch (e) {
    print(e);
  }
}
