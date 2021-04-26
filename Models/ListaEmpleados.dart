import 'Empleado.dart';

class ListaEmpleados {
  List<Empleado> listaEmpleados = [];

  ListaEmpleados() {}

  void altaEmpleado(Empleado emp) {
    this.listaEmpleados.add(emp);
  }

  List<Empleado> getEmpleados() {
    return this.listaEmpleados;
  }

  void borrarEmpleado(String dni) {
    this.listaEmpleados.removeWhere((element) => element.dni == dni);
  }
}
