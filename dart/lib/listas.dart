/* 
uso de listas en dart
*/

List<int> edades = [17, 15, 23, 55];

void main() {
  edades
  .where((edad) => edad > 18)
  .forEach((edad) {print('- $edad');});
}
