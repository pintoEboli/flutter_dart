import 'dart:io';
import 'dart:math';

void main() {
  print("----PULSA EN LA OPCION--------");
  menu();
}

void getValidacionNumNar(String nume) {
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
  print("-----------------------------------");
  menu();
}

void getConjeturaCollatz() {
  print("Introduzca un numero: ");
  double num = double.parse(stdin.readLineSync().toString());

  while (num != 1) {
    if (num % 2 == 0) {
      num = num / 2;
    } else {
      num = num * 3 + 1;
    }

    print("n = $num");
  }
  print("-----------------------------------");
  menu();
}

void menu() {
  print("1.- Comprobar número Narcisista");
  print("2.- Mostrar conjetura de Collatz");
  print("3.- Salir");

  int opcion = int.parse(stdin.readLineSync().toString());

  switch (opcion) {
    case 1:
      print("Escriba el numero para validar si es narcisista o no:");
      String numeroNar = stdin.readLineSync().toString();
      getValidacionNumNar(numeroNar);
      break;
    case 2:
      //print("Escriba el numero para crear la conjetura de Collatz:");
      //int numeroConje = int.parse(stdin.readLineSync().toString());
      getConjeturaCollatz();
      break;
    case 3:
      print("Salir al menu.");
      return;

      break;
    default:
      print("El valor debe estar comprendido entre 1 y 3");
      menu();
  }
}
