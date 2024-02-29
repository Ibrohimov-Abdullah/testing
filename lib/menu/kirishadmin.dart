import 'dart:io';

import 'package:dart_application_1/menu/local_adminm.dart';
import 'package:dart_application_1/menu/login_admin.dart';
import 'package:dart_application_1/menu/menu.dart';
import 'package:dart_application_1/service/io_service.dart';
import 'package:dart_application_1/service/navigator_service.dart';

class Kirish extends Menu{
  @override
  Future<void> build()async {
    print("1.login");
    print("2.registratsiya");
    stdout.write('write your chice: '.textBold.blue);
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