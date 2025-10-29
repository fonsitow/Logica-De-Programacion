'''
diccionario de empleado
'''

from utilidades import encabezado, linea
from typing import Any, Dict

def main() -> None:
  # Definir un diccionario
  empleado: Dict[str, Any] = {
    "nombre": 'Alfonso',
    'apellido': 'Henriquez',
    'cedula': '34.860.848',
    "edad": 21,
    'sueldo': 1000.00
  }  
  
  encabezado('datos del empleado', 32)
  for key, value in empleado.items():
    print(f'{key.upper()}: {value}')
    
main()