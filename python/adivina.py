'''
Juego de adivina el numero
'''

from random import randint
from utilidades import encabezado, linea, stringToNumber, readString

def main () -> None:
#definir variables
 secreto: int = randint(0, 50)
 numero: int = 0
 alias: str = ''

 encabezado('Juego de adivina el numero', 32)
 alias = readString('Agrega tu alias', 'No puede estar vacia')
 print(f"Hola, {alias}")
 linea(32)
 jugar(secreto, numero, alias)
 
def jugar(secreto: int, numero: int, alias: str) -> None:
  intentos: int = 0
  msj: str = ''
  while numero != secreto:
    if intentos == 6:
      print(f'{alias}, Perdiste, ya no te quedan mas intentos, el numero era {secreto}')
      break
    numero = stringToNumber('Ingresa tu numero: ', int)
    intentos += 1
    print(f'llevas {intentos} intentos')
    if numero > secreto:
      msj = 'tu numero es mayor a secreto...'
      print(f'{alias.upper()}, {msj}')
    elif numero < secreto:
      msj = 'tu numero es menor a secreto...'
      print(f'{alias.upper()}, {msj}')
    else:
      msj = 'ganaste'
      linea(45)
      print(f'{alias.upper()}, {msj.upper()}')
      linea(45)
      
main()