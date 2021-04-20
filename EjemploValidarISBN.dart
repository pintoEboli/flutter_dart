import 'dart:io';

void main() {
  print("Introdusca el numero ISBN");
  String isbn = stdin.readLineSync().toString();

  if (isbn.length != 10) {
    print("El numero ISBN debe tener 10 caracteres");
  } else {
    int suma = 0;
    for (int i = 0; i < isbn.length; i++) {
      int num = int.parse(isbn.substring(i, i + 1));
      int multiplicacion = num * (i + 1);
      suma += multiplicacion;
    }
    if (suma % 11 == 0) {
      print("NUm. ISBN CORRECTO");
    } else {
      print("NUm. ISBN INCORRECTO");
    }
  }
}
