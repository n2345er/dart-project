import 'dart:io';
double calculateArea({double length = 1, double width = 1}) {
  return length * width;
}
void main() {
  print('กรุณากรอกความสูง(มีค่าเริ่มต้นเท่ากับ 1): ');
  double length = double.tryParse(stdin.readLineSync() ?? '') ?? 1;

  print('กรุณากรอกความกว้าง(มีค่าเริ่มต้นเท่ากับ 1): ');
  double width = double.tryParse(stdin.readLineSync() ?? '') ?? 1;
  double area = calculateArea(length: length, width: width);
  print('พื้นที่ของสี่เหลี่ยมคือ: $area');
}
