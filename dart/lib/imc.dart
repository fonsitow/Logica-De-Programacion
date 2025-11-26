
import 'dart:math';

import '../util.dart' as util;

// DEFINIR LAS NALGAS DEL PROGRAMA AQUI
double peso = 0;
double altura = 0;
double imc = 0;

double calcularIMC(double peso, double altura) {
  return peso / pow(altura, 2);
}

void main(){

  util.encabezado('CALCULADORA DE IMC', 36);
  peso = util.leerDouble('Ingresa tu peso en kg: ');
  altura = util.leerDouble('Ingresa tu altura en metros: ');
  imc = calcularIMC(peso, altura);

  print('Tu IMC es: ${imc.toStringAsFixed(2)}');
}