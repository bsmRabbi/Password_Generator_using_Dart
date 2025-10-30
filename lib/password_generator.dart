import 'dart:math';

class PasswordGenerator {
  static String generateRandomPassword({int length = 12}) {
    List<String> alphabets = 'abcdefghijklmnopqrstuvwxyz'.split('');
    List<String> upperAlphabets = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'.split('');
    List<String> numbers = '0123456789'.split('');
    List<String> specialCharacters = ['@', '#', '%', '&', '*', '!', '?'];

    List<String> allChars = []
      ..addAll(alphabets)
      ..addAll(upperAlphabets)
      ..addAll(numbers)
      ..addAll(specialCharacters);

    Random random = Random();
    String password =
        List.generate(length, (_) => allChars[random.nextInt(allChars.length)])
            .join();

    return password;
  }
}
