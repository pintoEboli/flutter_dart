import 'dart:io';

void main() {
  print("Escribir un nombre:");
  String nombre = stdin.readLineSync().toString();
  String resultado = getNombreFuncion(nombre);
  print("resultado: $resultado");
}

String getNombreFuncion(String nombre) {
  return nombre.toUpperCase();
}
