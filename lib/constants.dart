import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class LocaleConstants {
  static const trLocale = Locale("tr", "TR");
  static const enLocale = Locale("en", "US");
  static const localePath = "assets/lang";

  ///
  ///
  ///

  static String merhaba = "merhaba arkadaşlar".myLocale;
  static String nasilsin = "nasılsınız".myLocale;

}

extension LocaleExtension on String {
  String get myLocale => this.tr().toString();
}































// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/material.dart';

// class LocaleConstant {
//   static const trLocale = Locale("tr", "TR");
//   static const enLocale = Locale("en", "US");
//   static const langPath = "assets/lang";

//   ///
//   ///
//   ///

//   static String selam = "selam".trLocale;
//   static String nasilsin = "nasılsın".trLocale;
// }

// extension LocaleExtensin on String {
//   String get trLocale => this.tr().toString();
// }
