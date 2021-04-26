import 'dart:io';

void main(List<String> args) {
  print("Introduzca el dia de nacimiento (Ej: 02) :");
  String dia = stdin.readLineSync().toString();
  print("Introduzca el mes de nacimiento (Ej: 11) :");
  String mes = stdin.readLineSync().toString();
  print("Introduzca el año de nacimiento (Ej: 2009) :");
  String anio = stdin.readLineSync().toString();
  int numDia = int.parse(dia);
  int numMes = int.parse(mes);
  int numAnio = int.parse(anio);
  print("-----------------------------------------");
  getDiaNacimiento(numDia, numMes, numAnio);
}

void getDiaNacimiento(int numDia, int numMes, int numAnio) {
  List<String> dias = [
    "Sabado",
    "Domingo",
    "Lunes",
    "Martes",
    "Miércoles",
    "Jueves",
    "Viernes",
  ];
  if (numMes == 1) {
    numMes = 13;
    numAnio -= 1;
  } else if (numMes == 2) {
    numMes = 14;
    numAnio -= 1;
  }

  int paso1 = (((numMes + 1) * 3) ~/ 5);
  int paso2 = (numAnio ~/ 4);
  int paso3 = (numAnio ~/ 100);
  int paso4 = (numAnio ~/ 400);

  int paso5 =
      numDia + (numMes * 2) + numAnio + paso1 + paso2 - paso3 + paso4 + 2;
  int paso6 = paso5 ~/ 7;
  int paso7 = paso5 - (paso6 * 7);

  print("Dia de nacimiento: ${dias[paso7]}");
}
