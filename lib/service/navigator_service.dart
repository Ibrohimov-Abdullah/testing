import 'package:dart_application_1/menu/menu.dart';

class Navigator{

  static Menu? initMenu;

  static Future<void>push(Menu menu)async{
    initMenu = menu;
    await initMenu?.build();
  }


}
