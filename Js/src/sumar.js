/// SRC carpeta sources sera la carpeta fuente

/* 
Programa para sumar 2 numeros en JavaScript
*/

import {encabezado, line} from "./utilidades.js";

const main = () => {
  encabezado('sumar numeros', 32)
  let a = 5
  let b = 2
  let resultado = 0
  console.log('resultado = ' + Sumar(a, b, resultado))
  line(32)
}

function Sumar(a = 0, b = 0, result) {
  return result = a + b
}

main()