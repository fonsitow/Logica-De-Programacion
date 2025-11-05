//funciones de utilidad
import PromptSync from "prompt-sync"
const input = PromptSync()

const readLineNumber = (msj = '',) => {
  let numero = 0;
  numero = Number(input(msj + ': '));
  return numero;
};
const readLine = (msj = '',) => {
  let string = '';
  while (true) {
    string = (input(msj + ': '));
    if (string.trim() != '') {
      return string
    } else {
      console.error('no puedes dejar  el campo vacio')
      
    }
  }
};

const centrar = (texto = '', largo = 0) => {
  let relleno = (largo - texto.length) / 2
  let textoCentrado = ' '.repeat(relleno)
  console.log(textoCentrado + texto + textoCentrado)
};

const line = (largo = 0) => {
  console.log('═'.repeat(largo));
};

const encabezado = (titulo = '', linea = 0) => {
  line(linea)
  centrar(titulo, linea) //a las acciones se le colocan parentesis para que se ejecute
  line(linea)
};

const capitalizar = (texto = '') => {
  return texto.charAt(0).toUpperCase() + texto.slice(1).toLowerCase();
}


export { encabezado, line, readLineNumber, capitalizar, readLine}



/*
    
  



*/