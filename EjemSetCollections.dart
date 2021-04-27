void main() {
  print("--------------- Collections SET-----------------");
  var frutas = {"Manzanas", "Pera", "Naranja"};
  frutas.add("Platano");
  frutas.add("Fresa");

  frutas.forEach((fruta) => print(fruta));
  frutas.remove("Pera");
  frutas.forEach((fruta) => print(fruta));
}
