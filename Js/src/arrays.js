/*
 * Arrays: Coleccion de datos de diferentes tipos, constituidos por indices y valores 
 * Conjuntos: Coleccion de datos de diferentes tipos, constituidos por indices y valores unicos
 * Objetos: Coleccion de datos de diferentes tipos, constituidos por {claves: valores}
 * 
 */

import {encabezado, line} from "./utilidades.js";

const main = () => {
  // definir un array de edades
  const edades = [17, 18, 20, 12, 10, 13, 21, 17, 18, 20, 12, 10, 13, 21, 32, 19, 40];
  encabezado('EDADES', 32)
  for (const i of edades.sort()) {
    if (i < 18) {
      console.log(`${i} menor de edad`)
    }else{
      console.log(`${i} mayor de edad`)
    }
  }

  encabezado('menores de edad', 32)
  edades.filter((edad) => edad < 18)
  .forEach((edad) => console.log(`${edad}`));


  encabezado('mayores de edad', 32)
  edades.filter((edad) => edad >= 18)
  .forEach((edad) => console.log(`${edad}`));

  encabezado('Edades unicas', 32)
  const edadesUnicas = new Set(edades);
  edadesUnicas.forEach((edad) => console.log(`Edades unicas ${edad}`))
}

main();