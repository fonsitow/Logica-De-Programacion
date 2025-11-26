import '../util.dart' as util;

int suma(List<int> numeros) {
  return numeros.reduce((a, b) => a + b);
}

List<int> numeros = [];

void main() {
  util.encabezado('SUMA DOS NUMEROS', 32);

  while (true) {
    final a = util.leerEntero('Agrega el numero 1: ');
    final b = util.leerEntero('Agrega el numero 2: ');
    final c = util.leerEntero('Agrega el numero 3: ');
    util.agregarElemento(numeros, [a, b, c]);
    print('RESULTADO: ${suma(numeros)}');
    break;
  }
}
