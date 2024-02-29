import 'dart:io';
import 'package:dart_application_1/menu/get_user.dart';
import 'package:dart_application_1/menu/postproduct.dart';
import 'package:dart_application_1/menu/setting_user.dart';
import 'package:dart_application_1/menu/welcome_menu.dart';
import 'package:dart_application_1/service/io_service.dart';
import '../service/extension_service.dart';
import '../service/navigator_service.dart';
import 'menu.dart';
// import 'profil_menu.dart';
import 'setting_menu.dart';

class HomeMenuUser extends Menu{

  @override
  Future<void> build() async{
    SettingMenu();
    print('Menu: '.blue.textBold);
    print("\t1.setting".translate.textItalic);
    print("\t2.get".translate.textItalic);
    print("\t3.postproduct".translate.textItalic);
    print("\t4.otqaga".translate.textItalic);
    print("\t5.exit".translate.red.textItalic);

    String input = IoService.read();
    await select(input);

  }

  Future<void> select(String input)async{
    switch(input){
      case "1":{
        await Navigator.push(SettingMenuUser());
        break;
      }
      case "2":{
        await Navigator.push(GetUser());
        break;
      }
       case "3":{
        await Navigator.push(PostProduct());
        break;
      }
       case "4":{
        await Navigator.push(Welcome());
        break;
      }
      case "5":
        {
        exit(0);
        }
    }
  }
}