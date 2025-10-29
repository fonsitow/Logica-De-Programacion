'''
Calculadora de IMC
'''

from utilidades import linea, stringToNumber, encabezado
#Aqui importamos lo q se utilizara
  

def main () -> None:
  #definir variables
  altura:float
  peso:float
  imc:float = 0 
  #Para que no contenga basura se inicializa en cero y liberamos ram
  encabezado('Calculadora IMC', 40)
  peso = stringToNumber('Agrega tu peso (KG) ', float)
  altura = stringToNumber('Agrega tu altura (M) ', float)
  
  imc = calculo_IMC(peso, altura)
  
  linea(40)
  print (f'Tu indice de masa corporal es {imc:.2f} ({(logica_IMC(imc).upper())})')
  
def calculo_IMC(peso: float, altura: float) -> float:
 return peso / pow(altura, 2)
  
def logica_IMC(imc: float) -> str:
  if imc < 18.5:
    return 'tienes que comer un poco mas'
  elif imc >= 18.5 and imc < 24.99:
    return 'Estas bien'
  elif imc > 25 and imc < 29.99:
    return 'estas sobre peso'
  else:
    return 'obesidad'

main()  #siempre se usa para inicializar el programa