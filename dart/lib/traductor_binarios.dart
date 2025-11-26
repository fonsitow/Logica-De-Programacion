import 'dart:io';

import 'util.dart' as util;

String? input = stdin.readLineSync();

String charToBinary(String char) {
  int code = char.codeUnitAt(0);
  return code.toRadixString(2).padLeft(8, '0');
}

String textToBinary(String text) {
  return text
      .split('')
      .map((char) => char.codeUnitAt(0).toRadixString(2).padLeft(8, '0'))
      .join(' ');
}

void main() {
  util.encabezado('Transcribir a binario', 32);
  stdout.write('Agrega tu palabra: ');

  final text = input;

  if (text != null ) {
    print(textToBinary(text));
  } else {
    print(Error());
  }
}
