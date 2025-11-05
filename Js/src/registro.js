/* 
Programa para registrar alumnos en JS
*/

import { encabezado, line, capitalizar } from "./utilidades.js";

const main = () => {

  const view_info = (...datos) => {
    encabezado('Registro del alumno', 32)
    console.log(`Cédula: ${datos[0]}`)
    console.log(`Nombre completo: ${capitalizar(`${datos[1]}`)} ${capitalizar(`${datos[2]}`)}`)
    console.log(`Tiene ${datos[3]} años`)
    console.log(`Su altura es de ${datos[4]}m`)
    console.log(`Genero: ${genero(datos[5])}`)
    console.log(`${turno(datos[6])}`)
  }

  const genero = (gender) => {
    if (gender) {
      return 'femenino'
    }
    else {
      return 'masculino'
    }
  }

  const turno = (turn) => {
    switch (turn) {
      case 1:
        return "Turno de la mañana"
      case 2:
        return "Turno de la tarde"
      case 3:
        return "Turno de la noche"
      default:
        return "no tiene turno"
    }
  }

  // variables de alumno
  let ci = '34.860.848';
  let name = 'alfonso';
  let last_name = 'henriquez';
  let age = 18;
  let gender = true;
  let height = 1.69;
  let turn = 1;  //1 = mañana 2 = tarde y 3 = noche
  view_info(ci, name, last_name, age, height, gender, turn);


}

main()