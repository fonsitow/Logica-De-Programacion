'''
primer comentario de bloque
'''
# PRIMER PROGRAMA, SUMA 2 VALORES ENTEROS

import utilidades as util

def logica():
  a = util.stringToNumber('Ingresa el numero A: ', int) 
  b = util.stringToNumber('Ingresa el numero B: ', int)
  d = util.stringToNumber('Ingresa el numero D: ', int)
  result = a + b + d
  print(f' la suma de {a}, {b} y {d} es igual a {result}')
  
def resta():
    util.encabezado(titulo= 'resta', altura= 50)
    c = util.stringToNumber('C: ', int)
    d = util.stringToNumber('D: ', int)
    return print(c - d)
  
def main () -> None:
    util.encabezado( titulo= 'hola mundo', altura= 36)
    util.encabezado( titulo= 'bienvenido a python y su sintaxis', altura= 60)
    util.encabezado( titulo= 'suma 2 numeros a y b', altura= 36)
    logica()
    resta()

main()
