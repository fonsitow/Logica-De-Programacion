/* 
uso de listas en dart
*/

import 'package:dart/util.dart' as util;

List<int> edades = [17, 15, 23, 55];

void main() {
  edades
  .where((edad) => edad > 18)
  .forEach((edad) {print('- $edad');});
}
