//calculadora imc

import { encabezado, line, readLineNumber } from "./utilidades.js";

const main = () => {

  while (true) {
    encabezado('Calculadora IMC', 32)
    let peso = readLineNumber('Agrega tu peso (kg)')
    let altura = readLineNumber('Agrega tu altura (mts)')

    let imc = resultado(peso, altura)

    if (isNaN(imc) || imc == null) {
      console.error('Error intenta de nuevo')
    } else {
      console.log('tu IMC es: ' + imc.toFixed(2))
      line(32)
      console.log(categorizarIMC(imc))
      line(32)
      break;
    }

  }
}

const resultado = (peso = 0, altura = 0, result = 0) => {
  return result = (peso / (altura * altura))
}

const categorizarIMC = (imc) => {
  if (imc < 18.5) return 'Bajo peso';
  if (imc < 24.9) return 'Peso normal';
  if (imc < 29.9) return 'Sobrepeso';
  return 'Obesidad';
}

main()