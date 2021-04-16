import 'dart:io';

void main() {
  print('---------------Introduce una letra---------------');
  print('Introduce la letra:');
  // ignore: prefer_final_locals
  String letra = stdin.readLineSync().toString();

  if (letra == 'a' || letra == 'e' || letra == 'i' || letra == 'o' || letra == 'u') {
    print('La letra introducida es una vocal($letra)');
  } else {
    print('La letra introducida es una consonantes($letra)');
  }
}