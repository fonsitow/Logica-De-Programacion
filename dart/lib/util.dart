import 'dart:io';

void linea(int largo){
  print('•' * largo);
}

void encabezado(String msj, int largo){
  linea(largo);
  print(centrar(msj, largo));
  linea(largo);
}

String centrar(String texto, int largo){
  int relleno = ((largo - texto.length) / 2).toInt();
  String textoCentrado = ' ' * relleno + texto;
  return textoCentrado;
}

int leerEntero(String msj){
  stdout.write(msj);
  final entrada = stdin.readLineSync();
  if (entrada != null) {
    return int.parse(entrada);
  } else {
    throw ('Error, agrega un numero valido');
  }
}

double leerDouble(String msj){
  stdout.write(msj);
  final entrada = stdin.readLineSync();
  if (entrada != null) {
    return double.parse(entrada);
  } else {
    throw ('Error, agrega un numero valido');
  }
}

String leerString(String msj){
  stdout.write(msj);
  final entrada = stdin.readLineSync();
  if (entrada != null) {
    return entrada;
  } else {
    throw ('Error, agrega un texto valido');
  }
}

void agregarElemento(List lista, dynamic elemento){
  lista.addAll(elemento);
}