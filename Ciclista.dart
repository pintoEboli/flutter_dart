import 'dart:io';
import 'BicicletaCarreras.dart';

void main() {
  String opcion;
  BicicletaCarreras b = BicicletaCarreras();

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
      case 5:
        b.subirMarcha();
        break;
      case 6:
        b.bajarMarcha();
        break;
      default:
        print("No existe la opción");
    }
  } while (true);
}
