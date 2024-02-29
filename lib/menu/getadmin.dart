import 'dart:io';

import 'package:dart_application_1/menu/getproduct.dart';
import 'package:dart_application_1/menu/home_menu.dart';
import 'package:dart_application_1/menu/menu.dart';
import 'package:dart_application_1/menu/mokuser.dart';
import 'package:dart_application_1/service/io_service.dart';
import 'package:dart_application_1/service/navigator_service.dart';

class Get extends Menu{
  @override
  Future<void> build() async{
   print("1.user");
   print("2.product");
   print("3.orqaga");
   print("4.exit");

   String input = IoService.read();
   select(input);

  }

   Future<void> select(String input)async{
    switch(input){
      case "1":{
        await Navigator.push(GetUsers());
        break;
      }
      case "2":{
        await Navigator.push(GetProduct());
        break;
      }
      case "3":{
        await Navigator.push(HomeMenuAdmin());
        break;
      }
      case "4":
        {
        exit(0);
        }
    }
  }

}
