/*
 ADIVINA EL NUMERO
*/

import * as util from "./utilidades.js";

const main = () => {
  // definir variable
  let secret_number = Math.floor(Math.random() * 50 + 1)
  let attemps = 5

  util.encabezado('Adivina el numero del 1 - al 50', 32)

  let name = util.readLine('Agrega un alias')
  while (true) {
    util.line(32)
    let search_number = util.readLineNumber('Agrega un numero')
    let diferencia = Math.abs(search_number - secret_number)

    util.line(32)
    if (search_number < secret_number) {
      console.log('Un poco mas arriba');
    } else if (search_number > secret_number) {
      console.log('un poco mas abajo');
    }
    util.line(32)


    if (diferencia <= 5) {
      console.log('Caliente')
    } else if (diferencia <= 10) {
      console.log('Tibio')
    } else {
      console.log('frio')
    }
    util.line(32)

    if (search_number === secret_number) {
      console.log(`${name} GANASTE`);
      break;
    } else {
      attemps--;
      if (attemps === 0) {
        console.log(`${name} PERDISTE el número era ${secret_number}`);
        break;
      } else {
        console.error(`Fallaste, te quedan ${attemps} intentos`);
      }
    }
  }
  util.line(32)
}




main()