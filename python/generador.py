'''
Generador de tablas de multiplicar
'''

import utilidades as util

def main() -> None:
  numero: int = 0
  inicio: int = 0
  fin: int = 0
  
  util.encabezado('Generador de tablas de multiplicar', 32)
  numero = util.stringToNumber('Ingresa tu numero: ', int)
  
  util.encabezado(f'tabla de multiplicar del {numero}', 32)
  generarTabla(numero)
  
  util.encabezado('Generador de rango de tablas', 32)
  inicio = util.stringToNumber('Ingresa tu numero de inicio: ', int)
  fin = util.stringToNumber('Ingresa tu numero de final: ', int)
  
  util.encabezado(f'tabla de multiplicar del {inicio} al {fin}', 32)
  generarRango(inicio, fin)
  
def generarRango(inicio: int, fin: int) -> None:
  # nroTablas: int = abs(inicio - fin) + 1, abs es para indicar un valor absoluto no negativo
  
  for j in range(inicio, fin + 1):
    util.linea(32)
    generarTabla(j)
  util.linea(32)
  
def generarTabla(numero: int) -> None:
  for i in range(1, 11):
    print(f'{numero} x {i} = {producto(numero, i)}')
producto = lambda a,b : a * b

main()