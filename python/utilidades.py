# FUNCIONES DE UTILIDAD

from typing import Any, Tuple

def linea(largo: int) -> None:
  print('═' * largo)

def encabezado(titulo: str, altura: int):
    linea(altura)
    print(titulo.upper().center(altura))
    linea(altura)
    
# conversion de string

def stringToNumber(msj: str, fn: Any) -> Any: #con fn agregamos que la funcion nos puede retornar cualquier tipo de dato, eso se especifica donde se vaya a aplicar
    number: int
    while True:
      try: 
        number = fn(input(msj))
        return number
      except ValueError:
        print('Error, signo invalido, escriba un numero por favor')
  

def readString(msj: str, aviso: str) -> str:
  texto: str = ''
  while True:
    texto = input(msj + ': ')
    if texto.strip():
      return texto.strip()
    else:
      print(aviso)