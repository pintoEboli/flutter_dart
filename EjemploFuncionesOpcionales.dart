void main() {
  print("LLAMANDO A LA FUNCIÓN");
  MetodoParametrosOpcionales(55);
  MetodoParametrosOpcionales(55, 19);
}

void MetodoParametrosOpcionales(int numero, [int parametroopcional = 15]) {
  print(numero.toString() + "--" + parametroopcional.toString());
}
