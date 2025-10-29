'''
list de ciudades (6 ciudades)
'''

from typing import List, Tuple
from utilidades import encabezado, linea, readString

def main() -> None:
  #Lista de ciudades
  ciudades:List[str] = []
  avisos:Tuple[str, ...] = (
    'Primera',
    'Segunda',
    'Tercera',
    'Cuarta',
    'Quinta',
    'Sexta'
  )
  
  ciudad: str = ''
  nro_ciudades: int = 6
  
  encabezado('ingreso de ciudades', 32)
  for i in range(nro_ciudades):
    ciudad = readString(f'Ingresa la {avisos[i]} ciudad', 'ciudad')
    ciudades.append(ciudad)

  encabezado('Ciudades', 32)
  for ciudad in ciudades:
    print(f'la ciudad es {ciudad}')
    
  encabezado('Ciudades ascendetes', 32)
  order_list = sorted(ciudades)
  for ciudad in order_list:
    print(f'La ciudad es {ciudad.upper()}')
    
  encabezado('Ciudades descendetes', 32)
  order_list2 = sorted(ciudades, reverse=True)
  for ciudad in order_list2:
    print(f'La ciudad es {ciudad.upper()}')
    
    
def ver_ciudades(ciudades: List[str], titulo: str, largo: int) -> None:
  encabezado(titulo=titulo, altura=largo)
  for ciudad in ciudades:
    print(f'la ciudad es {ciudad}')
    
main()