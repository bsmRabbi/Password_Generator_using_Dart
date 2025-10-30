import 'package:dart_password_generator/password_generator.dart';

void main() {
  String password = PasswordGenerator.generateRandomPassword(length: 16);
  print("🔐 Your generated password: $password");
}
