import 'dart:io';

import 'package:dart_application_1/menu/delete/delelteProduct.dart';
import 'package:dart_application_1/menu/delete/deleteuser.dart';
// import 'package:dart_application_1/menu/getproduct.dart';
import 'package:dart_application_1/menu/home_menu.dart';
import 'package:dart_application_1/menu/menu.dart';
// import 'package:dart_application_1/menu/mokuser.dart';
import 'package:dart_application_1/service/io_service.dart';
import 'package:dart_application_1/service/navigator_service.dart';

class Delete extends Menu{
  @override
  Future<void> build()async {
    print('Menu: ');
    print("\t1.user".textBold.green);
    print("\t2.product".textBold.green);
    print("\t3.orqaga".textBold.green);
    print("\t4.exit".textBold.red);
    String input = IoService.read();
    select(input);
  }

   Future<void> select(String input)async{
    switch(input){
      case "1":{
        await Navigator.push(DeleteUser());
        break;
      }
      case "2":{
        await Navigator.push(DeleteProduct());
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