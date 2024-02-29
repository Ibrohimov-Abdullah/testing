
enum Language{en,uz,ru}

class Languageservice{
  //defoulni tanlash
  static Language _language = Language.uz;

  // get orqali o'qib olamiz
  static Language get getLanguage => _language;

  static set setLanguage(Language language){
    _language = language;
  }

  static void swichLanguage(String lang){
    switch(lang){
      case "1":{Languageservice.setLanguage = Language.uz;} break;
      case "2":{Languageservice.setLanguage = Language.ru;} break;
      case "3":{Languageservice.setLanguage = Language.en;} break;
      default:{Languageservice.setLanguage = Language.en;} break;
      
    }
  }
}