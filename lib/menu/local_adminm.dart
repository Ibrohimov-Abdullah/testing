import 'dart:io';

import 'package:dart_application_1/menu/home_menu.dart';
// import 'package:dart_application_1/menu/login_admin.dart';
import 'package:dart_application_1/menu/menu.dart';
import 'package:dart_application_1/service/extension_service.dart';
import 'package:dart_application_1/service/io_service.dart';
import 'package:dart_application_1/service/navigator_service.dart';
import 'package:hive/hive.dart';
import 'package:path/path.dart' as path;
class LocalAdmin extends Menu{
  @override
  Future<void> build() async{
    String username;
    String password;
    String input;
   do {
      IoService.pBorder("enter your name".translate);
  username =   IoService.read();

 IoService.pBorder("enter your password");
   password =   IoService.read();

  print("1.tasdiqlash");
  print("2.qayta urinish");

  IoService.write("kiriting: ");
   input = IoService.read();
   } while (input == "2"); 


  
 
  final String directory = path.join(Directory.current.path,"dataAdmin");
// IoService.pBold(directory);
Hive.init(directory);
await Hive.openBox("boxAdmin");
final box = Hive.box("boxAdmin");
await box.put("username", username);
await box.put("password", password);
String usern = box.get("username");
String pass = box.get("password");
print(usern);
print(pass);
print("saqlandi");

Navigator.push(HomeMenuAdmin());
  }
}