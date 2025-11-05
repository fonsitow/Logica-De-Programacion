/*
Generador de tablas de multiplicar
*/

import {encabezado, line, readLineNumber} from './utilidades.js';

const main = () => {
  //VARIABLES
  let numero = 0
  let inicio = 0
  let final = 0

  const producto = (a, b) => a * b

  const generarTabla = (numero = 0) => {
    for (let i = 0; i < 11; i++) {
      console.log(`${numero} x ${i} = ${producto(numero, i)}`)
    }
  }

   const generarRango = (inicio, final) =>{
    for (inicio; inicio <= final; inicio++) {
      for (let i = 0; i <= 11; i++) {
        console.log(`${inicio} x ${i} = ${producto(inicio, i)}`)
      }
      line(32)
    }
  }

  encabezado('Generador de tablas de multiplicar', 48)
  numero = readLineNumber('ingresa un numero')
  encabezado(`Tabla del ${numero}`, 48)
  generarTabla(numero);

  encabezado('Has un rango de tablas de multiplicar', 48)
  inicio = readLineNumber('Ingresa tu numero de inicio')
  final = readLineNumber('Ingresa tu numero de final')
  encabezado(`tablas de multiplicar de ${inicio} al ${final}`, 48)
  generarRango(inicio, final)

}

main()