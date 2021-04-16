import 'dart:io';

void main() {
  print('---------------Introduce un número---------------');
  print('Introduce un número:');
  // ignore: prefer_final_locals
  int num = int.parse(stdin.readLineSync().toString());

  if (num > 0) {
    print('Numero: ($num)');
    print('Valor Absoluto: ($num)');
  } else {
    //print('Numero: ($num)');
    final int valor = num * -1;
    print('Valor Absoluto: $valor');
  }
}
