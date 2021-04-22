abstract class Empleado {
  String nombre = "";
  String apellido1 = "";
  String apellido2 = "";
  int diasVacaciones = 0;
  double salario = 0;
  double incentivo = 0;
  String cargo = "Empleado";

  String getVacaciones();
  String getSalarioMinimo();
  String getIncentivo();

  void setNombre(String nombre) {
    this.nombre = nombre;
  }

  String getNombre() {
    return this.nombre;
  }

  void setApellido1(String apellido1) {
    this.apellido1 = apellido1;
  }

  String getApellido1() {
    return this.apellido1;
  }

  void setApellido2(String apellido2) {
    this.apellido2 = apellido2;
  }

  String getApellido2() {
    return this.apellido2;
  }

  void setCargo(String cargo) {
    this.cargo = cargo;
  }

  String getNombreCompleto() {
    return this.getApellido1() +
        ' ' +
        this.getApellido2() +
        ' ' +
        this.getNombre();
  }

  String mostrarLetraDNI(int numero) {
    int num1 = numero;
    const String letras = "TRWAGMYFPDXBNJZSQVHLCKET";
    int result = (num1 % 23);
    print("reult: $result");
    return letras.substring(result, result + 1);
  }

  String sueldoBrutoAnual() {
    return "El sueldo bruto anual de un/a " +
        this.cargo +
        " es " +
        (this.salario * 12 + this.incentivo).toString();
  }
}
