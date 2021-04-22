class Bicicleta {
  bool estado = false;
  int velocidad = -1;
  int VEL_MAX = 5; //Pulsaciones de teclas

  Bicicleta() {
    this.estado = false; //Lista o no.
    this.velocidad = 0; //Velocidad
    this.menu();
  }

  void menu() {
    print("1.- Subir a la bici");
    print("2.- Acelerar");
    print("3.- Frenar");
    print("4.- Bajar de la bici");
    print("");
    print("Introduzca una opción");
  }

  void subir() {
    if (estado == false) {
      print("Ya estás encima de la bicicleta.");
      estado = true;
    } else {
      print("Ya estabas arriba, no intentes subir otra vez.");
    }
    menu();
  }

  void acelerar() {
    print("Entro en acelerar: velocidad-> $velocidad");
    if (estado == false) {
      print("Primero sube a la bicicleta");
    } else if (velocidad == VEL_MAX) {
      print("Ya no puedes acelerar más");
    } else {
      ++velocidad;
      print("Velocidad actual= $velocidad");
    }
    menu();
  }

  void frenar() {
    if (velocidad == 0) {
      print("Si estás parado porque frenas");
    } else {
      print("El frenado se realiza de golpe");
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
      print("Acabas de bajar de la bicicleta.");
    }
    menu();
  }
}
