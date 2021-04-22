import 'dart:io';
import 'FuncionesAuxiliares.dart';

void main() {
  FuncionesAuxiliares cli = FuncionesAuxiliares();
  menu(cli);
}

void menu(FuncionesAuxiliares cli) {
  print("---------------------------------");
  print("1.- Comprobar número Narcisista");
  print("2.- Mostrar conjetura de Collatz");
  print("3.- Salir");
  print("---------------------------------");
  print("Opción:");

  int opcion = int.parse(stdin.readLineSync().toString());

  switch (opcion) {
    case 1:
      print("Escriba el numero para validar si es narcisista o no:");
      String numeroNar = stdin.readLineSync().toString();
      print("----- Validar si un nuemro es narcisista-------");
      cli.getValidacionNumNar(numeroNar);
      menu(cli);
      break;
    case 2:
      print("Escriba el numero para crear la conjetura de Collatz:");
      print("Introduzca un número: ");
      int numeroConje = int.parse(stdin.readLineSync().toString());
      cli.getConjeturaCollatz(numeroConje);
      print("");
      menu(cli);
      break;
    case 3:
      print("Salir al menu.");
      return;
      break;
    default:
      print("El valor debe estar comprendido entre 1 y 3");
      menu(cli);
      break;
  }
}
