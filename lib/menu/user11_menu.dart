// import 'package:dart_application_1/menu/local_adminm.dart';
import 'package:dart_application_1/menu/localuserm.dart';
// import 'package:dart_application_1/menu/login_admin.dart';
import 'package:dart_application_1/menu/login_user.dart';
import 'package:dart_application_1/menu/menu.dart';
import 'package:dart_application_1/menu/welcome_menu.dart';
import 'package:dart_application_1/service/io_service.dart';
import 'package:dart_application_1/service/navigator_service.dart';

class User extends Menu{
  @override
  Future<void> build() async{
    print("1.login".textBold.textItalic.green);
    print("2.signup".textBold.textItalic.green);
    print("3.back".textBold.textItalic.red);

    String input = IoService.read();
    select(input);
  }
Future<void> select(String input)async{
    switch(input){
      case "1":{
        await Navigator.push(LoginUser());
        break;
      }
      case "2":{
        await Navigator.push(LocalUser());
        break;
      }
      case "3":{
        await Navigator.push(Welcome());
        break;
      }
    }
  }
}