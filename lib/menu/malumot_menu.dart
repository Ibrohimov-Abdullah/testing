// import 'dart:convert';

import 'package:dart_application_1/menu/home_menu.dart';
import 'package:dart_application_1/menu/menu.dart';
// import 'package:dart_application_1/models/product_model.dart';
import 'package:dart_application_1/service/extension_service.dart';
import 'package:dart_application_1/service/navigator_service.dart';
import 'package:dart_application_1/service/network_service.dart';

class Malumat extends Menu{
  @override
  Future<void> build() async {
    print("Mahsulotlaringiz bilan tanishing".translate);

  String? matn = await NetvorServis.getData(NetvorServis.baseUrlMok, NetvorServis.apiMok);
  print(matn);
// if(matn != null){
//   Product produrt = Product.fromJson(jsonDecode(matn));

//   for (var e in produrt) {
//     print("id : ${e.id}, ${e.category}");
//   }
// }
// print("Sizni yana kutib qolamiz xayr".translate);
await Navigator.push(HomeMenuAdmin());
  }
  
}