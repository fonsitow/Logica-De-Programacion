/*
* GENERADOR DE TABLAS DE MULTIPLICAR DART
*/

import 'package:colorize/colorize.dart';
import 'package:dart/util.dart' as util;

int numero = 1;
int a = 0;
int b = 0;

void main() {
  util.encabezado('RANGO DE TABLAS DE MULTIPLICAR', 32);
  a = util.leerEntero('AGREGA EL INICIO: ');
  b = util.leerEntero('AGREGA EL FINAL: ');

  util.encabezado('TABLAS DESDE $a hasta el $b', 32);
  for (var i = a; i <= b; i++) {
    for (var j = 0; j < 10; j++) {
      print(Colorize('$i x $j =  ${i * j}').green());
    }
    util.linea(32);
  }
}


void generarTablas() {
  util.encabezado('TABLAS DE MULTIPLICAR', 32);
  numero = util.leerEntero('AGREGA EL NUMERO DE LA TABLA: ');

  util.encabezado('TABLA DEL $numero', 32);
  for (var i = 0; i < 10 + 1; i++) {
    print('$numero x $i = ${numero * i}');
  }
}
