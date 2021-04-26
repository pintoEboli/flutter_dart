import 'dart:io';

import './Models/Empleado.dart';
import './Models/ListaEmpleados.dart';

void main() {
  ListaEmpleados lista = ListaEmpleados();
  menu(lista);
}

void menu(ListaEmpleados lista) {
  print("--- PULSA EN LA OPCION ---");
  print("1.- Alta Empleado");
  print("2.- Borrar Empleado");
  print("3.- Listar Empleados");
  print("4.- Salir");

  do {
    print("Opción: ");
    int opcion = int.parse(stdin.readLineSync().toString());
    switch (opcion) {
      case 1:
        altaEmpleado(lista);
        break;
      case 2:
        print("Introduzca el dni del empleado a eliminar:");
        String dni = stdin.readLineSync().toString();
        borrarEmpleado(dni, lista);
        break;
      case 3:
        print("Lista de empleados:");
        print("------------------------------");
        listarEmpleados(lista);
        break;
      case 4:
        print("Hasta la proxima.");
        return;
        break;
      default:
        print("No existe la opción");
        menu(lista);
    }
  } while (true);
}

void altaEmpleado(ListaEmpleados lista) {
  print("--------------- Introduzca los datos del empleado -------------");
  print("Escriba un Nombre:");
  String nombre = stdin.readLineSync().toString();
  print("Escriba un Apellido:");
  String apellido = stdin.readLineSync().toString();
  print("Escriba el DNI del empleado:");
  String dni = stdin.readLineSync().toString();
  print("Escriba el sexo:");
  String sexo = stdin.readLineSync().toString();
  print("Escriba la direccionDeTrabajo:");
  String direccionDeTrabajo = stdin.readLineSync().toString();
  print("Escriba la domicilioParticular:");
  String domicilioParticular = stdin.readLineSync().toString();
  print("Escriba la Edad:");
  int edad = int.parse(stdin.readLineSync().toString());
  print("Escriba la estadoCivil:");
  String estadoCivil = stdin.readLineSync().toString();
  print("Escriba la nacionalidad:");
  String nacionalidad = stdin.readLineSync().toString();
  print("------------------------------------------------------");

  Empleado emp = Empleado();
  emp.nombre = nombre;
  emp.apellido = apellido;
  emp.dni = dni;
  emp.sexo = sexo;
  emp.direccionDeTrabajo = direccionDeTrabajo;
  emp.domicilioParticular = domicilioParticular;
  emp.edad = edad;
  emp.estadoCivil = estadoCivil;
  emp.nacionalidad = nacionalidad;

  //ListaEmpleados lista = ListaEmpleados();
  lista.altaEmpleado(emp);
  menu(lista);
}

void borrarEmpleado(String dni, ListaEmpleados lista) {
  lista.borrarEmpleado(dni);
  menu(lista);
}

void listarEmpleados(ListaEmpleados lista) {
  print("Cantidad de Empleados: " + lista.getEmpleados().length.toString());
  for (Empleado empleado in lista.getEmpleados()) {
    print("Nombre: ${empleado.nombre}");
    print("Apellido: ${empleado.apellido}");
    print("DNI: ${empleado.dni}");
    print("Direc. Particular: ${empleado.domicilioParticular}");
    print("Direc. Trabajo: ${empleado.direccionDeTrabajo}");
    print("Sexo: ${empleado.sexo}");
    print("Edad: ${empleado.edad}");
    print("Estado Civil: ${empleado.estadoCivil}");
    print("Nacionalidad: ${empleado.nacionalidad}");
    print("--------------------------------------");
  }
  menu(lista);
}
