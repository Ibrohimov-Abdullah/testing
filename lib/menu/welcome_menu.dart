import 'package:dart_application_1/menu/admin_menu.dart';
// import 'package:dart_application_1/menu/home_menu.dart';
// import 'package:dart_application_1/menu/local_adminm.dart';
// import 'package:dart_application_1/menu/localuserm.dart';
// import 'package:dart_application_1/menu/login_admin.dart';
import 'package:dart_application_1/menu/menu.dart';
import 'package:dart_application_1/menu/user11_menu.dart';
// import 'package:dart_application_1/menu/user_menu.dart';
import 'package:dart_application_1/service/io_service.dart';
import 'package:dart_application_1/service/navigator_service.dart';

class Welcome extends Menu{
  @override
  Future<void> build() async{
 print("Welcome to Menu");
 print("\t1.Admin".green.textBold);
 print("\t2.User".green.textBold);
  String input = IoService.read();
  select(input);
  }
     Future<void> select(String input)async{
    switch(input){
    case "1":{
    await Navigator.push(Admin());
    break;
    }
    case "2":{
    await Navigator.push(User());
    break;
    } 
    }
  }
}