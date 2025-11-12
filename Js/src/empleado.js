import { encabezado, line, capitalizar } from "./utilidades.js";

const main = () => {
  const empleado = {
    
  'cedula' : '34.860.848',
  'nombre' : 'Alfonso',
  'apellido' : 'Henriquez',
  'edad' : 18,
  'sueldo' : 1000000.99
  }

encabezado('NOMBRE DEL EMPLEADO', 32)
console.log(`${empleado['nombre']}`)
encabezado('DATOS DEL EMPLEADO', 32)
for (const i in empleado) {
  console.log(`${i.toUpperCase()}: ${empleado[i]}`)
}
}
main()