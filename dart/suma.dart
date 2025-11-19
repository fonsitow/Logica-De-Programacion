import 'dart:io';
import 'util.dart' as util;

int suma(int a, int b) {
  return a + b;
}

void main() {

  util.encabezado('SUMA DOS NUMEROS', 32);

  while (true) {
    stdout.write('Agrega el numero 1: ');
    final a = stdin.readLineSync();

    stdout.write('Agrega el numero 2: ');
    final b = stdin.readLineSync();

    if (a != null && b != null) {
      print('RESULTADO: ${suma(int.parse(a), int.parse(b))}');
    }
    break;
  }
}
