
import 'dart:io';

import 'package:dart_application_1/menu/home_menu.dart';
// import 'package:dart_application_1/models/product_model.dart';
import 'package:dart_application_1/models/user_model.dart';
import 'package:dart_application_1/service/extension_service.dart';
import 'package:dart_application_1/service/io_service.dart';
import 'package:dart_application_1/service/navigator_service.dart';
import 'package:dart_application_1/service/network_service.dart';

import 'menu.dart';

class ProfileMenu extends Menu{
  
static const String id = "/profile_menu";

  @override
  Future<void> build() async{
    


String? str = "";
    do {
stdout.write("enter username : ".translate.blue);
String? userName = stdin.readLineSync();


stdout.write("enter password: ".translate.blue);
String? password = stdin.readLineSync();

// print(userName);
// print(password);

//  username: 'kminchelle',
//     password: '0lelplR'

str = await NetvorServis.postData( NetvorServis.baseUrlDummyJson, NetvorServis.apiUser, {"username":userName,"password":password});

if(str != null){

  // print(str);
Users user = usersMod(str);
print("malumotlar yetib keldi".translate);

print(" id : ${user.id}");
// await Future.delayed(Duration(seconds: 2));

print(user.username);
// await Future.delayed(Duration(seconds: 2));

print(user.firstName);
// await Future.delayed(Duration(seconds: 2));

print(user.lastName);
// await Future.delayed(Duration(seconds: 2));

print(user.gender);
// await Future.delayed(Duration(seconds: 2));


print("login tasdiqlandi...".translate);
Navigator.push(HomeMenuAdmin());

}else{
print("Xatolik bor qaytadan urinib ko'ring".translate);
}
} while (str == null);
  
  }
}