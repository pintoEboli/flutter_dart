import 'Bici.dart';

class BicicletaCarreras extends Bici {
  int marcha = 0;
  BicicletaCarreras() {
    this.estado = false; //Lista o no.
    this.velocidad = 0; //Velocidad
    this.menu();
    this.marcha = 3; //La bicicleta tiene 5 marchas.
  }

  void menu() {
    print("1.- Subir a la bici");
    print("2.- Acelerar");
    print("3.- Frenar");
    print("4.- Bajar de la bici");
    print("5.- Subir marcha");
    print("6.- Bajar Marcha");
    print("");
    print("Introduzca una opción");
  }

  void subirMarcha() {
    if (marcha <= 5) {
      VEL_MAX = VEL_MAX + 5;
      ++marcha;
    } else {
      print("No puedes subir más de marcha");
    }
    menu();
  }

  void bajarMarcha() {
    if (marcha > 0) {
      VEL_MAX = VEL_MAX - 5;

      --marcha;
    } else {
      print("No puedes bajar más de marcha");
    }

    menu();
  }
}
