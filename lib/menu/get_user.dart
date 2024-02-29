// import 'dart:io';

// import 'package:dart_application_1/menu/getproduct.dart';
// import 'package:dart_application_1/menu/home_menu.dart';
import 'package:dart_application_1/menu/menu.dart';
// import 'package:dart_application_1/menu/mokuser.dart';
import 'package:dart_application_1/menu/user_menu.dart';
import 'package:dart_application_1/service/navigator_service.dart';
import 'package:dart_application_1/service/network_service.dart';

class GetUser extends Menu{
  @override
  Future<void> build() async{
    String? result = await NetvorServis.getData(NetvorServis.baseUrlMok, NetvorServis.apiMok);
  print(result);
 await Navigator.push(HomeMenuUser());
  }

  

}