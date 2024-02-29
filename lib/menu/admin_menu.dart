import 'dart:io';

import 'package:dart_application_1/menu/local_adminm.dart';
import 'package:dart_application_1/menu/login_admin.dart';
import 'package:dart_application_1/menu/menu.dart';
// import 'package:dart_application_1/menu/welcome_menu.dart';
import 'package:dart_application_1/service/io_service.dart';
import 'package:dart_application_1/service/navigator_service.dart';

class Admin extends Menu{
  @override
  Future<void> build() async{
    print('Menu');
    print("\t1.login".textItalic);
    print("\t2.registratsiya".textItalic);
    stdout.write('write your choice:  ');
    String input = IoService.read();
    select(input);
  }
Future<void> select(String input)async{
    switch(input){
      case "1":{
        await Navigator.push(LoginAdmin());
        break;
      }
      case "2":{
        await Navigator.push(LocalAdmin());
        break;
      }
      
    }
  }
}