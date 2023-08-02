import 'package:flutter/services.dart';

enum CardType {
  MasterCard,
  Visa,
  Verve,
  Others, // Any other card issuer
  Invalid // We'll use this when the card is invalid
}

class PaymentCard {
  CardType? cardType;
  String? number;
  String? name;
  int? month;
  int? year;
  int? cvv;

  PaymentCard({this.cardType, this.number, this.name, this.month, this.year, this.cvv});

  @override
  String toString() {
    return '[CardType: $cardType, Number: $number, Name: $name, Month: $month, Year: $year, Cvv: $cvv]';
  }
}

// class CardUtils {
//   static String? validateCVV(String? value) {
//     if (value == null || value.isEmpty) {
//       return Strings.fieldReq;
//     }
//     if (value.length < 3 || value.length > 4) {
//       return "CVV is invalid";
//     }
//     return null;
//   }

//   static String? validateDate(String? value) {
//     if (value == null || value.isEmpty) {
//       return Strings.fieldReq;
//     }
//   }
// }

class CardMonthInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    var newText = newValue.text;
    if (newValue.selection.baseOffset == 0) {
      return newValue;
    }

    var buffer = StringBuffer();
    for (var i = 0; i < newText.length; i++) {
      buffer.write(newText[i]);
      var noneZeroIndex = i + 1;
      if (noneZeroIndex % 2 == 0 && noneZeroIndex != newText.length) {
        buffer.write('/');
      }
    }

    var string = buffer.toString();
    return newValue.copyWith();
  }
}
