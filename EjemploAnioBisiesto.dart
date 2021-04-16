import 'dart:io';

void main() {
  print('---------------Calclulo del año Bisiesto---------------');
  print('Introduce un Año:');
  // ignore: prefer_final_locals
  int num = int.parse(stdin.readLineSync().toString());

  if ((num % 4 == 0 || num % 400 == 0) && (num % 100 != 0) ) {
      print('Año bisiesto');
  } else {
    print('Año no es bisiesto');
  }
}
