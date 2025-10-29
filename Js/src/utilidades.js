//funciones de utilidad

const centrar = (texto = '', largo = 0) => {
  let relleno = (largo - texto.length) / 2
  let textoCentrado = ' '.repeat(relleno)
  console.log(textoCentrado + texto + textoCentrado)
}

const line = (largo = 0) => {
  console.log('═'.repeat(largo));
}

const encabezado = (titulo = '', linea = 0) => {
  line(linea)
  centrar(titulo, linea) //a las acciones se le colocan parentesis para que se ejecute
  line(linea)
}


export {encabezado, line} 