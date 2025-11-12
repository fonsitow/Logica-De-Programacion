/* Array ciudades */

import { encabezado, line, readLine } from "./utilidades.js";

const main = () => {
  const avisos = ['primera', 'segunda', 'tercera', 'cuarta', 'quinta', 'Sexta'];
  const ciudades = [];
let ciudad = '';
const nroCiudades = 6

encabezado('ingresa las ciudades', 32)
for (let i = 0; i < nroCiudades; i++) {
  ciudad = readLine(`Ingresa la ${avisos[i]}`)
  ciudades.push(ciudad)
}

encabezado('Ciudades', 32)
  ciudades.forEach((ciudad) => console.log(ciudad))
};

main();