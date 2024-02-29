import 'package:dart_application_1/menu/menu.dart';
import 'package:dart_application_1/service/language_service.dart';

class MyApp {
  static Map<String, Menu> initialRoute = {};
  MyApp({
    required Menu home,
    required Map<String, Menu> routes,
    required Language language,
}){
    Languageservice.setLanguage = language;
    initialRoute = routes;
    _runApp(home);
  }
  Future<void> _runApp(Menu menu)async{
    while(true){
      await menu.build();
    }
  }

}