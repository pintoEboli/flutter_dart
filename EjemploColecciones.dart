void main() {
  print("--------------LISTAS-------------");

  print("CREANDO LISTAS DE ENTEROS");

  List<int> edades = [20, 84, 18, 41, 36, 25];

  print("RECORRIENDO CON FOR..IN");

  for (int v in edades) {
    print(v);
  }
  print("RECORRIENDO CON FOREACH");

  edades.forEach((valor) {
    print(valor);
  });

  print("CREANDO LISTAS DE CADENAS");
  List<String> nombre = ["Benito", "Floro", "Alex", "Andrea", "Rosa", "Sara"];

  for (String n in nombre) {
    print(n);
  }
  print("RECORRIENDO CON FOREACH");

  nombre.forEach((valor) {
    print(valor);
  });
}
