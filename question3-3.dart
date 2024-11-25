import 'dart:io';

String createUser(String name, int age, {bool isActive = true}) {
  return 'Name: $name, Age: $age, Active: $isActive';
}

void main() {
  print('กรุณากรอกชื่อ:');
  String name = stdin.readLineSync() ?? '';

  print('กรุณากรอกอายุ:');
  int? age = int.tryParse(stdin.readLineSync() ?? '');

  print('ต้องการตั้งค่า Active หรือไม่?:');
  String? isActiveInput = stdin.readLineSync();
  bool isActive = isActiveInput?.toLowerCase() == 'false' ? false : true;

  if (age != null) {
    print(createUser(name, age, isActive: isActive));
  } else {
    print('กรุณากรอกอายุเป็นตัวเลขที่ถูกต้อง');
  }
}
