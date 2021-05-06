import 'dart:io';

import 'CalculadoraProcedimientos.dart';

void main() {
  CalculadoraProcedimientos cal = CalculadoraProcedimientos(0, 0);
  menu();
  int opcion;

  do {
    opcion = int.parse(stdin.readLineSync().toString());

    switch (opcion) {
      case 1:
        print("Introduzca el primer número:");
        int numero1 = int.parse(stdin.readLineSync().toString());
        print("Introduzca el segundo número:");
        int numero2 = int.parse(stdin.readLineSync().toString());
        cal.num1 = numero1;
        cal.num2 = numero2;
        menu();
        break;
      case 2:
        cal.sumarNumeros();
        menu();
        break;
      case 3:
        cal.restarNumeros();
        menu();
        break;
      case 4:
        cal.multiplicarNumeros();
        menu();
        break;
      case 5:
        cal.dividirNumeros();
        menu();
        break;
      default:
        print("Error..! Opcion no valida , vuelva a intentarlo.");
        print("------------------------------------------------");
        menu();
        break;
    }
  } while (opcion != 6);
}

void menu() {
  print("--- PULSA EN LA OPCION ---");
  print("1.- INTRODUCIR NUMEROS");
  print("2.- SUMAR");
  print("3.- RESTAR");
  print("4.- MULTIPLICAR");
  print("5.- DIVIDIR");
  print("6.- SALIR");
  print("Opción: ");
}
