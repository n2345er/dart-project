import 'dart:math';

String generateRandomPassword(int length) {
  const String chars = 'qwerwrrytuhdfsf34y5675nffhggtufhfsbvmhtt';
  Random rand = Random();
  String password = '';

  for (int i = 0; i < length; i++) {
    int index = rand.nextInt(chars.length);
    password += chars[index];
  }
  return password;
}
void main() {
  int passwordLength = 12; 
  String password = generateRandomPassword(passwordLength);
  print('Your random password is: $password');
}
