import 'dart:io';
import 'package:dart/util.dart' as util;

Future<void> verCiudades(List<String> ciudades, String titulo, int largo) async {
  await Future.delayed(Duration(seconds: 5));
  util.encabezado(titulo, largo);
  for (var ciudad in ciudades) {
    print('- ${ciudad.toUpperCase()}');
  }
}

Future<void> main() async {
  
  // VARIABLES
  List<String> ciudades =[];
  String? ciudad = '';
  List<String> avisos = [
    'Primera',
    'Segunda',
    'Tercera',
    'Cuarta',
    'Quinta',
    'Sexta',
    'Septima'
  ];

  final nroCiudades = avisos.length;

  util.encabezado('LISTA DE CIUDADES', 32);
  for (var i = 0; i < nroCiudades; i++) {
    stdout.write('AGREGA LA ${avisos.elementAt(i).toUpperCase()} CIUDAD: ');
    ciudad = stdin.readLineSync();
    if (ciudad != null) {
      ciudades.add(ciudad);
    }
  }

  print('CARGANDO DATOS...');

  await verCiudades(ciudades, 'ORDENADAS POR ORDEN DE ENTRADA', 32);

  ciudades.sort((a,b) => b.compareTo(a));
  await verCiudades(ciudades, 'ORDENADAS Z-A', 32);

  ciudades.sort();
  await verCiudades(ciudades, 'ORDENADAS A-Z', 32);
}

