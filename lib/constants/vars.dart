import 'dart:ui';

class Vars {
  // TextFormField Errors
  static const String emptyTextError = "Bu alanı boş bırakmayınız";
  static const String invalidPhoneError = "Lütfen geçerli bir telefon giriniz";
  static const String invalidEmailError = "Lütfen geçerli bir email giriniz";
  static const String unmatchPasswordError = "Şifreler eşleşmemektedir";
  static const String containSpacePasswordError = "Şifreniz boşluk içeremez";

  static const int verifyCodeLength = 6;
  static const int verifyCodeSecond = 60;

  // https://stackoverflow.com/questions/50081213/how-do-i-use-hexadecimal-color-strings-in-flutter
  static Color convertColorFromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  static final Color mainYellow = convertColorFromHex("FFFAE684");
}
