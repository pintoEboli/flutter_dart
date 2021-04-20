import 'dart:io';

void main() {
  print('---------------Tabla de Multiplicar---------------');
  print('Introduce el numero para crear la tabla:');

  int num = int.parse(stdin.readLineSync().toString());

  if (num > 0 && num < 11) {
    int result = 1;
    for (int i = 1; i < 11; i++) {
      result = num * i;
      print(" $num x $i =  $result");
    }
  } else {
    print("El numero debe estar comprendido entre 0 y 10");
  }
}
