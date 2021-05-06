import 'dart:io';
import 'ConvertidorPesos.dart';

void main() {
  ConvertidorPesos datoInicial = ConvertidorPesos();
  menu();
  int opcion;

  do {
    opcion = int.parse(stdin.readLineSync().toString());

    switch (opcion) {
      case 1:
        pedirDato(datoInicial);
        menuSecundario(opcion);
        try {
          int opcionSecundaria = int.parse(stdin.readLineSync().toString());
          do {
            switch (opcionSecundaria) {
              case 1:
                datoInicial.getGramosOnzas();
                menuSecundario(opcion);
                opcionSecundaria = int.parse(stdin.readLineSync().toString());
                break;
              case 2:
                datoInicial.getOnzasGramos();
                menuSecundario(opcion);
                opcionSecundaria = int.parse(stdin.readLineSync().toString());
                break;
              default:
                print("Escoja una opcion del menu");
                opcionSecundaria = int.parse(stdin.readLineSync().toString());
            }
          } while (opcionSecundaria != 3);
        } on FormatException {
          print("Error, debes introducir un número");
        } catch (e) {
          print(e);
        }
        menu();
        break;
      case 2:
        pedirDato(datoInicial);
        menuSecundario(opcion);
        try {
          int opcionSecundaria = int.parse(stdin.readLineSync().toString());
          do {
            switch (opcionSecundaria) {
              case 1:
                datoInicial.getLitrosGalones();
                menuSecundario(opcion);
                opcionSecundaria = int.parse(stdin.readLineSync().toString());
                break;
              case 2:
                datoInicial.getGalonesLitros();
                menuSecundario(opcion);
                opcionSecundaria = int.parse(stdin.readLineSync().toString());
                break;
              default:
                print("Escoja una opcion del menu");
                opcionSecundaria = int.parse(stdin.readLineSync().toString());
            }
          } while (opcionSecundaria != 3);
        } on FormatException {
          print("Error, debes introducir un número");
        } catch (e) {
          print(e);
        }
        menu();
        break;
      case 3:
        pedirDato(datoInicial);
        menuSecundario(opcion);
        try {
          int opcionSecundaria = int.parse(stdin.readLineSync().toString());
          do {
            switch (opcionSecundaria) {
              case 1:
                datoInicial.getMetrosYardas();
                menuSecundario(opcion);
                opcionSecundaria = int.parse(stdin.readLineSync().toString());
                break;
              case 2:
                datoInicial.getYardasMetros();
                menuSecundario(opcion);
                opcionSecundaria = int.parse(stdin.readLineSync().toString());
                break;
              default:
                print("Escoja una opcion del menu");
                opcionSecundaria = int.parse(stdin.readLineSync().toString());
            }
          } while (opcionSecundaria != 3);
        } on FormatException {
          print("Error, debes introducir un número");
        } catch (e) {
          print(e);
        }
        menu();
        break;
      case 4:
        pedirDato(datoInicial);
        menuSecundario(opcion);
        try {
          int opcionSecundaria = int.parse(stdin.readLineSync().toString());

          do {
            switch (opcionSecundaria) {
              case 1:
                datoInicial.getGradosCentigradosFarenheit();
                menuSecundario(opcion);
                opcionSecundaria = int.parse(stdin.readLineSync().toString());
                break;
              case 2:
                datoInicial.getGradosFarenheitCentigrados();
                menuSecundario(opcion);
                opcionSecundaria = int.parse(stdin.readLineSync().toString());
                break;
              default:
                print("Escoja una opcion del menu");
                opcionSecundaria = int.parse(stdin.readLineSync().toString());
            }
          } while (opcionSecundaria != 3);
        } on FormatException {
          print("Error, debes introducir un número");
        } catch (e) {
          print(e);
        }
        menu();
        break;
      default:
        print("Error..! Opcion no valida , vuelva a intentarlo.");
        print("------------------------------------------------");
        menu();
        break;
    }
  } while (opcion != 5);
}

void menu() {
  print("-----------------------------------");
  print("-----------------------------------");
  print("-----  CONVERTIDOR DE PESOS  ------");
  print("-----------------------------------");
  print("-----------------------------------");
  print("1. CONVERTIR GRAMOS -- ONZAS   ");
  print("2. CONVERTIR LITROS -- GALONES  ");
  print("3. CONVERTIR METROS -- YARDAS   ");
  print("4. CONVERTIR CELSIUS -- FARENHEIT  ");
  print("5. SALIR");
  print("Seleccione una opción..............");
  //int opcion = int.parse(stdin.readLineSync().toString());
}

void menuSecundario(int op) {
  switch (op) {
    case 1:
      print("--------------------------------");
      print("1. GRAMOS A ONZAS ");
      print("2. ONZAS A GRAMOS ");
      print("3. VOLVER AL MENU PRINCIPAL ");
      print("Seleccione el tipo de conversión:");
      break;
    case 2:
      print("--------------------------------");
      print("1. LITROS A GALONES ");
      print("2. GALONES A LITROS ");
      print("3. VOLVER AL MENU PRINCIPAL ");
      print("Seleccione el tipo de conversión:");
      break;
    case 3:
      print("--------------------------------");
      print("1. METROS A YARDAS ");
      print("2. YARDAS A METROS ");
      print("3. VOLVER AL MENU PRINCIPAL ");
      print("Seleccione el tipo de conversión:");
      break;
    case 4:
      print("--------------------------------");
      print("1. CELSIUS A FARENHEIT ");
      print("2. FARENHEIT A CELSIUS ");
      print("3. VOLVER AL MENU PRINCIPAL ");
      print("Seleccione el tipo de converción:");
      break;

    default:
      break;
  }
}

void pedirDato(ConvertidorPesos datoInicial) {
  print("Introduzca el dato a convertir:");
  int valor = int.parse(stdin.readLineSync().toString());
  datoInicial.dato = double.parse(valor.toString());
}
