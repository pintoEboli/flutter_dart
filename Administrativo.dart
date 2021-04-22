import 'Empleado.dart';

class Administrativo extends Empleado {
  Administrativo() {
    this.diasVacaciones = 22;
    this.salario = 750.0;
  }

  @override
  String getIncentivo() {
    return "Los Administrativos tienen incentivos: " +
        this.incentivo.toString();
    throw UnimplementedError();
  }

  @override
  String getSalarioMinimo() {
    return "El salario para un adminstrativo es de: " + this.salario.toString();
    throw UnimplementedError();
  }

  @override
  String getVacaciones() {
    return "Los administrativos disponen de: " +
        this.diasVacaciones.toString() +
        " de vacaciones.";
    throw UnimplementedError();
  }

  String getBrutoAnual() {
    this.setCargo("Administrativo");
    return this.sueldoBrutoAnual();
  }
}
