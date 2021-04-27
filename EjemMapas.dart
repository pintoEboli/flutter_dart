void main() {
  print("--------------MAPAS-------------");

//clave : valor

  var provincias = {
    924: "Zadajoz",
    956: "Cádiz",
    958: "Granada",
    959: "Huelva",
    91: "Madrid",
    95: "Málaga",
    968: "Murcia"
  };

  provincias.keys.toList().sort();
  provincias.forEach((k, v) => print("${k} : ${v}"));
}
