''' calendario en python '''

import utilidades as util
import calendar
import locale

def main() -> None:
  locale.setlocale(locale.LC_ALL, "es_ES.UTF-8")
  year: int = util.stringToNumber('ingresa el año: ', int)
  month: int = util.stringToNumber('ingresa el mes: ', int)
  
  if month >= 1 and month <= 12:
    util.encabezado(f'Calendario del año {year}', 32)
  # cal = calendar.prcal(year)
    cal = calendar.month(year, month)
    
    print(cal)
  else:
    print(f'el {month} no existe')
    main()


main()