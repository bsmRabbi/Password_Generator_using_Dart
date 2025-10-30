import 'package:dart_password_generator/password_generator.dart';
import 'package:test/test.dart';

void main() {
  test('Password should not be empty', () {
    String password = PasswordGenerator.generateRandomPassword();
    expect(password.isNotEmpty, true);
  });

  test('Password should have correct length', () {
    String password = PasswordGenerator.generateRandomPassword(length: 10);
    expect(password.length, equals(10));
  });
}
