void linea(int largo){
  print('•' * largo);
}

void encabezado(String msj, int largo){
  linea(largo);
  print(centrar(msj, largo));
  linea(largo);
}

String centrar(String texto, int largo){
  int relleno = ((largo - texto.length) / 2).toInt();
  String textoCentrado = ' ' * relleno + texto;
  return textoCentrado;
}