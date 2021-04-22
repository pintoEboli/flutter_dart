import 'dart:io';
import 'Bicicleta.dart';

void main() {
  String opcion;
  Bicicleta b = Bicicleta();

  do {
    print("Opción: ");

    opcion = stdin.readLineSync().toString();

    switch (int.parse(opcion)) {
      case 1:
        b.subir();
        break;
      case 2:
        b.acelerar();
        break;
      case 3:
        b.frenar();
        break;
      case 4:
        b.bajar();
        return;
      default:
        print("No existe la opción");
    }
  } while (true);
}
