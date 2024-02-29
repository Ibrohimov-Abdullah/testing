import 'dart:io';
import 'package:dart_application_1/menu/delete/delete.dart';
import 'package:dart_application_1/menu/getadmin.dart';
// import 'package:dart_application_1/menu/local_menu.dart';
import 'package:dart_application_1/menu/welcome_menu.dart';
// import 'package:dart_application_1/menu/registr_menu.dart';
import 'package:dart_application_1/service/io_service.dart';
import '../service/extension_service.dart';
import '../service/navigator_service.dart';
import 'menu.dart';
// import 'profil_menu.dart';
import 'setting_menu.dart';

class HomeMenuAdmin extends Menu{

  @override
  Future<void> build() async{
    SettingMenu();
    print("1.setting".translate);
    print("2.get".translate);
    print("3.delate".translate);
    print("4.orqaga".translate);
    print("5.exit".translate);
    stdout.write('write your chice: '.textBold.blue);
    String input = IoService.read();
    await select(input);

  }

  Future<void> select(String input)async{
    switch(input){
      case "1":{
        await Navigator.push(SettingMenu());
        break;
      }
      case "2":{
        await Navigator.push(Get());
        break;
      }
       case "3":{
        await Navigator.push(Delete());
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