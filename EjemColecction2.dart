void main(List<String> args) {
  print("CREANDO LISTAS DE CADENAS");
  List<String> nombres = ["Benito", "Floro", "Alex", "Andrea", "Rosa", "Sara"];
  nombres.add("David");

  for (String nombre in nombres) {
    print(nombre);
  }
}
