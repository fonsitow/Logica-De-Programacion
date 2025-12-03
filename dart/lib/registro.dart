//REGISTRO DE ALUMNOS
import 'package:intl/intl.dart' as intl;
import '../util.dart' as util;

//Variables
  final Map<String, dynamic> alumnos = {
    'cedula': '34.860.848',
    'nombre': 'Alfonso',
    'apellido': 'Henriquez',
    'edad': 18,
    'altura': 1.68,
    'matricula': 100,
    'genero': "Masculino",
    'turno': 'Mañana' // 1 mañana, 2 tarde, 3 nocturno
  };

void main() {
  
  util.encabezado('DATOS DEL ALUMNO', 32);
  alumnos.forEach((key, value) => print('${key.toUpperCase()} : ${value.toString()}'),);
  util.linea(32);
}
