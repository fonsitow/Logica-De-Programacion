'''
listas en python son un conjunto de datos enmarcados por []
que dentro de si obtienen distintos tipos de datos: como [int, float, bool, str] 
'''

from typing import List
from utilidades import encabezado, linea

def main() -> None:
  #ejemplo de una lista de edades
  edades:List[int] = [
    34,
    57,
    57,
    17,
    17,
    25,
    55,
    55,
    43,
    32,
    32,
    10,
    15,
    15,
    12,
    8
  ]
  
  encabezado(titulo='Lista de edades', altura=32)
  print(f'Edades: {len(edades)}')
  print(f'Edad Final: {edades[-1]}')
  print(f'Edad 2: {edades[2]}')
  print(f'Porcion de lista: {edades[2:6]}')
  linea(32)
  
  for edad in edades:         #for para recorrer la lista
    print(f'edad es {edad}')
    
  encabezado(titulo='leer lista de edades con indice', altura=32)
  for i, age in enumerate(edades):  #desetructuracion de datos, desglose de valores en variables
    print(f'La edad {i} es {age}')
  
  encabezado('Edades ascendentes', 32)
  edades.sort()
  for edad in edades:
    print(f'La edad es {edad}')
  
  encabezado('Edades descendentes', 32)
  edades.sort(reverse=True)
  for edad in edades:
    print(f'La edad es {edad}')
    
  encabezado('Mayores edad', 32)
  mayoresEdad = filter(lambda edad: edad >= 18,edades)
  for edad in mayoresEdad:
    print(f'Mayor de edad {edad}')
    
  encabezado('Menores edad', 32)
  menoresEdad = filter(lambda edad: edad < 18,edades)
  for edad in menoresEdad:
    print(f'Mayor de edad {edad}')
    
  encabezado('Edades unicas', 32)
  #Set en python es una lista que no repite sus datos
  edadesUnicas = list(set(edades))
  for i, edad in enumerate(edadesUnicas):
    print(f'La edad {i} es {edad}')
  
main()