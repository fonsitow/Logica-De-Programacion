import 'dart:math';
import 'package:colorize/colorize.dart';
import 'util.dart' as util;

// VARIABLES
final random = Random();
final _numberRandom = random.nextInt(100) + 1;
int _attemps = 7;

void main() {
  util.encabezado('ADIVINA EL NUMERO DEL 1 AL 100', 32);
  final alias = util.leerString('AGREGA TU USERNAME: ');
  jugar(alias);
}

//FUNCION PARA JUGAR
void jugar(String alias) {
   while (true) {
  final respuesta = util.leerString('AGREGA UN NUMERO: ');
  final diferencia = (int.parse(respuesta) - _numberRandom).abs();

    if (respuesta.isEmpty) {
      print('DEBES AGREGAR UN NUMERO VALIDO');
    }

    if (_attemps == 1) {
      print(Colorize('${alias.toUpperCase()} PERDISTE, EL NUMERO ERA $_numberRandom').bgRed());
      break;
    }
  
    if (int.tryParse(respuesta) == _numberRandom) {
      print(Colorize('${alias.toUpperCase()} GANASTE').green());
      break;
    } else if (int.tryParse(respuesta)! > _numberRandom) {
      print('MAS ABAJO');
      _attemps--;
      print('TE QUEDAN $_attemps intentos');
    } else if (int.tryParse(respuesta)! < _numberRandom) {
      print('MAS ARRIBA');
      _attemps--;
      print('TE QUEDAN $_attemps intentos');
    }else{
      print('PERDISTE');
      break;
    }
  
    if (diferencia <= 5) {
      print(Colorize('CALIENTE').red());
    } else if (diferencia <= 10) {
      print(Colorize('TIBIO').lightRed());
    } else {
      print(Colorize('FRIO').lightBlue());
    }
  }
}
