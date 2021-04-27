void main() {
  print("--------------MAPAS-------------");

//clave : valor

  var provincias = {
    924: "Badajoz",
    956: "Cádiz",
    958: "Granada",
    959: "Huelva",
    91: "Madrid",
    95: "Málaga",
    968: "Murcia"
  };
  provincias.forEach((k, v) => print("${k} : ${v}"));
}
