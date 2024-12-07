import 'dart:io';

void main() {
  print('กรุณาป้อนตัวอักษร: ');
  String? input = stdin.readLineSync();
  if (input != null && input.length == 1) {
    String char = input.toLowerCase();
    if ('aeiou'.contains(char)) {
      print('$char เป็นสระ');
    } else if (RegExp(r'^[a-zA-Z]$').hasMatch(char)) {
      print('$char เป็นพยัญชนะ');
    } else {
      print('กรุณาป้อนตัวอักษรภาษาอังกฤษเท่านั้น');
    }
  } else {
    print('กรุณาป้อนตัวอักษรเพียงหนึ่งตัว');
  }
}
