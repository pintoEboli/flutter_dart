import 'Empleado.dart';

class Gerente extends Empleado {
  //double salario;
  //double incentivo;
  String cargo = "";

  Gerente() {
    this.salario = 2000;
    this.incentivo = 10000.0;
    this.diasVacaciones = 40;
    this.cargo = "Gerente Operaciones";
  }

  @override
  String getIncentivo() {
    return "Tendra un incentivo de: " + this.incentivo.toString();
  }

  @override
  String getSalarioMinimo() {
    // TODO: implement getSalarioMinimo
    return "El salario de un gerente es: " + this.salario.toString();
    throw UnimplementedError();
  }

  @override
  String getVacaciones() {
    return "Los dias de vacaciones son: " +
        ' ' +
        this.diasVacaciones.toString();
    throw UnimplementedError();
  }

  String getBrutoAnual() {
    this.setCargo("Gerente");
    return this.sueldoBrutoAnual();
  }
}
