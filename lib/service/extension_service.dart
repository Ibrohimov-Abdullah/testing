

import 'package:dart_application_1/language/en.dart';
import 'package:dart_application_1/language/ru.dart';
import 'package:dart_application_1/language/uz.dart';

import 'language_service.dart';

extension LanguageTranslate on String{
  String get translate{
    switch(Languageservice.getLanguage){
      case Language.uz:
      return uz[this] ?? this;
      case Language.ru:
      return ru[this] ?? this;
      case Language.en:
      return en[this] ?? this;
    }
  }
}

