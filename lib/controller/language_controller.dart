// ignore_for_file: always_use_package_imports

import '../locale/ar.dart';
import '../locale/en.dart';
import '../locale/ne.dart';

class LocaleController {
  final String locale;

  LocaleController({this.locale = "en"});

  String translate(String text) {
    String? translationText;
    if (locale.toLowerCase().trim() == "en") {
      translationText = en[text];
    } else if (locale.toLowerCase().trim() == "ar") {
      translationText = ar[text];
    } else if (locale.toLowerCase().trim() == 'ne') {
      translationText = ne[text];
    }
    return translationText ?? text;
  }
}
