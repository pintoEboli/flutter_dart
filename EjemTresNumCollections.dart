import 'dart:io';

void main() {
  //Pedimos los datos por teclado

  print("----- MAYOR DE TRES NÚMEROS CON LISTA------");
  List<int> listanumeros = [];
  print("Introduce  número 1: ");
  int numero1 = int.parse(stdin.readLineSync().toString());
  listanumeros.add(numero1);

  print("Introduce  número 2: ");
  int numero2 = int.parse(stdin.readLineSync().toString());
  listanumeros.add(numero2);

  print("Introduce  número 3: ");
  int numero3 = int.parse(stdin.readLineSync().toString());
  listanumeros.add(numero3);

  listanumeros.sort();

  print("Numero Maximo es: ${listanumeros[2]}");
  print("Numero Minimo es: ${listanumeros[0]}");
  print("Numero Medio es: ${listanumeros[1]}");
}
