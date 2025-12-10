import 'dart:io';

Stream<String> hora() async* {
  int actual = DateTime.now().hour;
  int actualM = DateTime.now().minute;
  int actualS = DateTime.now().second;

  int seconds = actualS;
  int minutes = actualM;
  int hour = actual;
  String horario = 'am';

  while (true) {
    await Future.delayed(Duration(seconds: 1));
    seconds++;
    if (seconds >= 60) {
      seconds = 0;
      minutes++;
      if (minutes >= 60) {
        minutes = 0;
        hour++;
        if (hour > 12) {
          hour = 1;
        }
        if (hour == 12) {
          horario = (horario == 'am') ? 'pm' : 'am';
        }
      }
    }
    yield '${hour.toString().padLeft(2, '0')}:${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')} $horario';
  }
}

Stream<String> cronometro() async* {
  int seconds = 0;
  int minutes = 0;
  int hour = 0;
  while (true) {
    await Future.delayed(Duration(seconds: 1));
    seconds++;
    if (seconds >= 60) {
      seconds = 0;
      minutes++;
      if (minutes >= 60) {
        minutes = 0;
        hour++;
      }
    }
    yield '${hour.toString().padLeft(2, '0')}:${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
  }
}

Stream<String> temporizador(int limiteH, int limiteM, int limiteS) async* {
  int seconds = 0;
  int minutes = 0;
  int hours = 0;

  while (true) {
    await Future.delayed(Duration(seconds: 1));

    seconds++;
    if (seconds == 60) {
      seconds = 0;
      minutes++;
      if (minutes == 60) {
        minutes = 0;
        hours++;
        if (hours == 24) {
          hours = 0;
        }
      }
    }

    yield '${hours.toString().padLeft(2, '0')}:${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';

    if (hours == limiteH && minutes == limiteM && seconds == limiteS) {
      break;
    }
  }
}

void main() {
  print('BIENVENIDO AL RELOJ DE CONSOLA');
  stdout.write('QUE QUIERES USAR HOY?\n');
  print('1 - HORA\n2 - CRONOMETRO\n3 - TEMPORIZADOR ');
  final int respuesta = int.parse(stdin.readLineSync()!);
  if (respuesta == 1) {
    hora().listen((time) {
      print(time);
    });
  } else if (respuesta == 2) {
    cronometro().listen((time) {
      print(time);
    });
  } else if (respuesta == 3) {
    print('Selecciona el limite de horas (predeterminado 0)');
    int horas = int.parse(stdin.readLineSync()!);
    print('Selecciona el limite de minutos (predeterminado 0)');
    int minutos = int.parse(stdin.readLineSync()!);
    print('Selecciona el limite de segundos (predeterminado 0)');
    int segundos = int.parse(stdin.readLineSync()!);

    print(
      'Al llegar a ${horas.toString().padLeft(2, '0')}:${minutos.toString().padLeft(2, '0')}:${segundos.toString().padLeft(2, '0')}',
    );

    temporizador(horas, minutos, segundos).listen((time) {
      print(time);
    });
  }
}
