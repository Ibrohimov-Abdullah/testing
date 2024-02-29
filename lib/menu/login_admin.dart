import 'dart:io';

import 'package:dart_application_1/menu/home_menu.dart';
import 'package:dart_application_1/menu/local_adminm.dart';
import 'package:dart_application_1/menu/menu.dart';
import 'package:dart_application_1/service/io_service.dart';
import 'package:dart_application_1/service/navigator_service.dart';
import 'package:hive/hive.dart';
import 'package:path/path.dart' as path;

class LoginAdmin extends Menu{
  @override
  Future<void> build() async{

   IoService.write("Username: ");
   String usernameR =  IoService.read();

    IoService.write("Password: ");
   String password =  IoService.read();

     final String directory = path.join(Directory.current.path,"dataAdmin");
// IoService.pBold(directory);
Hive.init(directory);
await Hive.openBox("boxAdmin");
final box = Hive.box("boxAdmin");

   String? usern = box.get("username");
   String? pass = box.get("password");
  if(usernameR == usern && password == pass){
    print("muvaffaqiyatli o'tdi");
    Navigator.push(HomeMenuAdmin());
  }else{
    print("registratsiyadan o'ting");
    Navigator.push(LocalAdmin());
  }
   
  }

}