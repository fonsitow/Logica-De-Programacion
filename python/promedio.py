'''
Calcular el promedio de alturas de 6 personas
'''
from utilidades import linea,encabezado,stringToNumber, Tuple

def main() -> None:
  #definir variables
  altura: float = 0
  sumatoria: float = 0
  promedio: float = 0
  personas: int = 6
  max_height: float = 0
  min_height: float = 0
  avisos: Tuple[str, ...] = (
    'primera',
    'segunda',
    'tercera',
    'cuarta',
    'quinta',
    'sexta'
  )
  
  encabezado('Alturas: ', 45)
  for i in range(personas):
    altura = stringToNumber(f'ingresa la {avisos[i]} altura: ', float)
    sumatoria += altura
    
    if i == 0:
      max_height = altura
      min_height = altura
    
    if altura > max_height:
      max_height = altura
      
    if altura < min_height:
      min_height = altura
      
      
  promedio = sumatoria/personas
  
  linea(45)
  print(f'El promedio de altura es {promedio:.2f}M')
  linea(45)
  print(f'La altura maxima es {max_height:.2f}')
  linea(45)
  print(f'La altura minima es {min_height:.2f}')
  
    
main()