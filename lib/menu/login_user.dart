import 'dart:io';

// import 'package:dart_application_1/menu/home_menu.dart';
// import 'package:dart_application_1/menu/local_adminm.dart';
import 'package:dart_application_1/menu/localuserm.dart';
import 'package:dart_application_1/menu/menu.dart';
import 'package:dart_application_1/menu/user_menu.dart';
import 'package:dart_application_1/service/io_service.dart';
import 'package:dart_application_1/service/navigator_service.dart';
import 'package:hive/hive.dart';
import 'package:path/path.dart' as path;

class LoginUser extends Menu{
  @override
  Future<void> build() async{

   IoService.write("Username: ");
   String usernameR =  IoService.read();

    IoService.write("Password: ");
   String password =  IoService.read();

     final String directory = path.join(Directory.current.path,"dataUser");
// IoService.pBold(directory);
Hive.init(directory);
await Hive.openBox("boxUser");
final box = Hive.box("boxUser");

   String? usern = box.get("username");
   String? pass = box.get("password");
   print(usern);
   print(pass);
  if(usernameR == usern && password == pass){
    print("muvaffaqiyatli o'tdi");
    Navigator.push(HomeMenuUser());
  }else{
    print("registratsiyadan o'ting");
    Navigator.push(LocalUser());
  }
   
  }

}