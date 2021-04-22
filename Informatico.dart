import 'Empleado.dart';

class Informatico extends Empleado {
  Informatico() {
    this.diasVacaciones = 30;
    this.salario = 1500;
    this.incentivo = 300.0;
  }

  @override
  String getIncentivo() {
    return "Los Informaticos tienen incentivos: " + this.incentivo.toString();
    throw UnimplementedError();
  }

  @override
  String getSalarioMinimo() {
    return "El salario para un informático es: " + this.salario.toString();
    throw UnimplementedError();
  }

  @override
  String getVacaciones() {
    return "Los informaticos disponen de: " +
        this.diasVacaciones.toString() +
        " de vacaciones.";
    throw UnimplementedError();
  }

  String getBrutoAnual() {
    this.setCargo("Informatico");
    return this.sueldoBrutoAnual();
  }
}
