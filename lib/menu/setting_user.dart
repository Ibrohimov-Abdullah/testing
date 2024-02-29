

// import 'package:dart_application_1/menu/home_menu.dart';
import 'package:dart_application_1/menu/user_menu.dart';
import 'package:dart_application_1/service/navigator_service.dart';

import '../service/extension_service.dart';
import '../service/io_service.dart';
import '../service/language_service.dart';
import 'menu.dart';

class SettingMenuUser extends Menu{
  @override
 Future<void> build() async {
    print("1. UZBEK"); 
    print("2. RUSSIAN") ;
    print("3. ENGLISH");
    
    print('Kiriting => '.translate);
  String? pressLanguage = IoService.read();
  do {
      if (['1', '2', '3'].contains(pressLanguage)) {
      Languageservice.swichLanguage(pressLanguage);
      print('til ozgardi'.translate);
      Navigator.push(HomeMenuUser());
    } else {
      print('qayta urining'.translate);
    }
  } while (!['1', '2', '3'].contains(pressLanguage));
  }

}