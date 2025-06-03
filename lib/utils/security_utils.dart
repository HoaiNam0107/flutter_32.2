import 'package:encrypt/encrypt.dart' as encrypt;

class SecurityUtils {
  // Hàm lọc đầu vào để tránh XSS
  static String sanitizeInput(String input) {
    return input.replaceAll(RegExp(r'<[^>]+>'), '');
  }

  // Hàm mã hóa AES
  static String encryptInput(String input) {
    final key = encrypt.Key.fromLength(32);
    final iv = encrypt.IV.fromLength(16);
    final encrypter = encrypt.Encrypter(encrypt.AES(key));
    final encrypted = encrypter.encrypt(input, iv: iv);
    return encrypted.base64;
  }

  // Hàm giải mã AES
  static String decryptInput(String input) {
    final key = encrypt.Key.fromLength(32);
    final iv = encrypt.IV.fromLength(16);
    final encrypter = encrypt.Encrypter(encrypt.AES(key));
    final decrypted = encrypter.decrypt64(input, iv: iv);
    return decrypted;
  }
}
