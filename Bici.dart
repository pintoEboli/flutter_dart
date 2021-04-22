abstract class Bici {
  bool estado = false;
  int velocidad = -1;
  int VEL_MAX = 15; //Pulsaciones de teclas

  void menu();
  void subirMarcha();
  void bajarMarcha();
  void subir() {
    if (estado == false) {
      print("Ya estás encima de la bici, ánimo campeón");
      estado = true;
    } else {
      print("Ya estabas arriba. Pedalea vaguete");
    }
    menu();
  }

  void acelerar() {
    if (estado == false) {
      print("Primero sube a la bicicleta");
    } else if (velocidad == VEL_MAX) {
      print("Ya no puedes acelerar más");
    } else {
      ++velocidad;
      print("Velocidad = $velocidad");
    }

    menu();
  }

  void frenar() {
    if (velocidad == 0) {
      print("Si estás parado porque frenas");
    } else {
      print("Pon los pies que los frenos son nuevos");
      velocidad = 0;
    }
    menu();
  }

  void bajar() {
    if (estado == false) {
      print("No te has subido y ya te bajas");
    } else if (velocidad != 0) {
      print("Primero frena y luego baja");
    } else {
      print("Muy bien campeón. Mañana más");
    }

    menu();
  }
}
