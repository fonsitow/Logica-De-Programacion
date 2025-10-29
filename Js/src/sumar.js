/// SRC carpeta sources sera la carpeta fuente

/* 
Programa para sumar 2 numeros en JavaScript
*/

import { encabezado, line, readLineNumber } from "./utilidades.js";

const main = () => {


  while (true) {
    encabezado('sumar numeros', 32)

    let a = readLineNumber('a')
    let b = readLineNumber('b')
    let c = readLineNumber('c')
    let d = readLineNumber('d')

    let resultado = Sumar(a, b, c, d)

    try {
      if (isNaN(resultado)) {
      console.error('Error repite la operacion nuevamente')
    } else if (resultado == 0){
      console.error('Error no puedes dejar los campos vacios')
    }else {
      console.log('resultado =', resultado)
      line(32)
      break
    }
    } catch (error) {
      console.error(error)
    }
    
  }
}

const Sumar =(...numeros) => {
  return numeros.reduce((result, num) => result + num, 0)
}

main()