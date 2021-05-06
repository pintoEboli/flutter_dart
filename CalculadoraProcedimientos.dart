class CalculadoraProcedimientos {
  int num1 = 0;
  int num2 = 0;

  CalculadoraProcedimientos(this.num1, this.num2) {
    //this.num1 = nume1;
    //this.num2 = nume2;
  }

  void sumarNumeros() {
    try {
      int suma = this.num1 + this.num2;
      print("La suma de los numeros: $num1 y $num2 es: $suma");
    } on FormatException {
      print("Error, debes introducir un número");
    } catch (e) {
      print(e);
    }
  }

  void restarNumeros() {
    try {
      int resta = this.num1 - this.num2;
      print("La resta de los numeros: $num1 y $num2 es: $resta");
    } on FormatException {
      print("Error, debes introducir un número");
    } catch (e) {
      print(e);
    }
  }

  void multiplicarNumeros() {
    try {
      int multiplicacion = this.num1 * this.num2;
      print(
          "La multiplicacion de los numeros: $num1 por $num2 es: $multiplicacion");
    } on FormatException {
      print("Error, debes introducir un número");
    } catch (e) {
      print(e);
    }
  }

  void dividirNumeros() {
    try {
      int divicion = this.num1 ~/ this.num2;
      print("La divición entre los números: $num1 y $num2 es: $divicion");
    } on FormatException {
      print("Error, debes introducir un número");
    } on IntegerDivisionByZeroException {
      print("¡¡¡Error!!!. El divisor no puede ser cero");
    } catch (e) {
      print(e);
    }
  }
}
