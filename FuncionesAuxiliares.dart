import 'dart:io';
import 'dart:math';

class FuncionesAuxiliares {
  FuncionesAuxiliares() {}

  bool getValidacionNumNar(String nume) {
    //String nume = stdin.readLineSync().toString();

    double suma = 0;

    for (int i = 0; i < nume.length; i++) {
      int numero = int.parse(nume.substring(i, i + 1));
      int longitud = nume.length;
      num elevado = pow(numero, longitud);
      suma = suma + elevado;
    }

    if (suma == int.parse(nume)) {
      print("$nume es narcisista");
      return true;
    } else {
      print("$nume no es narcisista");
      return false;
    }
  }

  void getConjeturaCollatz(int numeroConje) {
    double num = double.parse(numeroConje.toString());

    while (num != 1) {
      if (num % 2 == 0) {
        num = num / 2;
      } else {
        num = num * 3 + 1;
      }

      print("n = $num");
    }
  }
}
