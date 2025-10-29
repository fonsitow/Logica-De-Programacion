'''
Registro de alumnos
'''
from utilidades import linea, encabezado, Any

def main( ) -> None:
  #definicion de variables
  ci: str = '34.860.848'
  name: str = 'Alfonso'
  last_name: str = 'Henriquez'
  age: int = 17
  height: float = 1.69
  gender: bool = False #True = femenino
  turn: int = 1 #1 = mañana 2 = tarde y 3 = noche
  view_info(ci, name, last_name, age, height, gender, turn)
  
def view_info(*datos: Any) -> None: #se le indica con *datos = a todos los datos q se le agreguen los convierta en una tupla
  encabezado('Datos de alumnos', 50)
  print (f'Cédula: {datos[0]}')
  print (f'Nombre completo {datos[1].upper()} {datos[2].upper()}')
  print (f'Tiene {datos[3]} años')
  print (f'Su altura es de {datos[4]}m')
  print (f'Genero: {gender(datos[5])}')
  print (f'{turno(datos[6])}')
  linea(50)
  
def gender(gender: bool) -> str:
  if gender:
    return 'femenino'
  else: 
    return 'masculino'
  
def turno(turno: int) -> str:
  match turno:
    case 1:
      return "Turno de la mañana"
    case 2:
      return "Turno de la tarde"
    case 3:
      return "Turno de la noche"
    case _: #piso si no tiene valor
      return 'No tiene turno'
  
main() 

  
