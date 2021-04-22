import 'Administrativo.dart';
import 'Gerente.dart';
import 'Informatico.dart';

void main() {
  Administrativo adm1 = Administrativo();
  Informatico inf1 = Informatico();
  Gerente ger1 = Gerente();

  //Administrativo Datos:
  adm1.setNombre("Benito");
  adm1.setApellido1("Floro");
  adm1.setApellido2("Sanz");
  //Informatico Datos:
  inf1.setNombre("David");
  inf1.setApellido1("Morales");
  inf1.setApellido2("Calderón");
  //Gerente Datos:
  ger1.setNombre("Florentino");
  ger1.setApellido1("Perez");
  ger1.setApellido2("Rodriguez");

  print("------------- DATOS----------------");
  print(adm1.getNombreCompleto());
  print(adm1.getSalarioMinimo());
  print(adm1.getVacaciones());
  print(adm1.getBrutoAnual());
  print("------------- DATOS----------------");
  print(inf1.getNombreCompleto());
  print(inf1.getSalarioMinimo());
  print(inf1.getVacaciones());
  print(inf1.getBrutoAnual());
  print("------------- DATOS----------------");
  print(ger1.getNombreCompleto());
  print(ger1.getSalarioMinimo());
  print(ger1.getVacaciones());
  print(ger1.getBrutoAnual());
}
