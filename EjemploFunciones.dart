import 'dart:io';

void main() {
  print("LLAMANDO A LA FUNCIÓN");
  double resultado = calcularIVA(1000);
  print("IVA incluido (21%): $resultado");
}

double calcularIVA(int importe) {
  print("Precio del producto: $importe");
  double total = importe * 1.21;
  return total;
}
