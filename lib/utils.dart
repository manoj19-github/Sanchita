import 'package:intl/intl.dart';

class UTILMAIN {
  static RegExp regExp =
      RegExp(r'^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$');
  static String clientGithubId = "Ov23ctPi76Fo6nzUTGpD";
  static String clientGithubSecret = "14483ebdf36a8338b63470487d4a96344ca5b107";
  static String githubRedirectUri =
      "https://flutterfirebase-7bdd6.firebaseapp.com/__/auth/handler";

  static indianRupeesFormat(dynamic value) => NumberFormat.currency(
        name: "INR",
        locale: 'en_IN',
        decimalDigits: 0, // change it to get decimal places
        symbol: '₹ ',
      ).format(double.tryParse(value));
}
