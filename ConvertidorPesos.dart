class ConvertidorPesos {
  double dato = 0;
  double datoConvertido = 0;

  double getGradosCentigradosFarenheit() {
    this.datoConvertido = (this.dato * 1.8) + 32;
    print(
        "La conversión de ${this.dato} Grados celsius a Grados farenheit es: ${this.datoConvertido}");
    return datoConvertido;
  }

  double getGradosFarenheitCentigrados() {
    this.datoConvertido = (this.dato - 32) * 5 / 9;
    print(
        "La conversión de ${this.dato} Grados farenheit a Grados celsius es: ${this.datoConvertido}");
    return datoConvertido;
  }

  double getGramosOnzas() {
    this.datoConvertido = this.dato * 28.3495;
    print(
        "La conversión de ${this.dato} gramos a Onzas es: ${this.datoConvertido}");
    return datoConvertido;
  }

  double getOnzasGramos() {
    this.datoConvertido = this.dato * 0.0353;
    print(
        "La conversión de ${this.dato} Onzas a Gramos es: ${this.datoConvertido}");
    return datoConvertido;
  }

  double getLitrosGalones() {
    this.datoConvertido = this.dato / 3.7854;
    print(
        "La conversión de ${this.dato} Litros a Galones es: ${this.datoConvertido}");
    return datoConvertido;
  }

  double getGalonesLitros() {
    this.datoConvertido = this.dato * 0.254;
    print(
        "La conversión de ${this.dato} Galones a Litros es: ${this.datoConvertido}");
    return datoConvertido;
  }

  double getYardasMetros() {
    this.datoConvertido = this.dato * 1.0936;
    print(
        "La conversión de ${this.dato} Yardas a Metros es: ${this.datoConvertido}");
    return datoConvertido;
  }

  double getMetrosYardas() {
    this.datoConvertido = this.dato * 0.9144;
    print(
        "La conversión de ${this.dato} Metros a Yardas es: ${this.datoConvertido}");
    return datoConvertido;
  }
}
