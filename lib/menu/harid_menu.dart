import 'dart:io';

import 'package:dart_application_1/menu/home_menu.dart';
import 'package:dart_application_1/menu/menu.dart';
import 'package:dart_application_1/models/product_model.dart';
import 'package:dart_application_1/service/extension_service.dart';
import 'package:dart_application_1/service/navigator_service.dart';
import 'package:dart_application_1/service/network_service.dart';

class Harid extends Menu{
  @override
  Future<void> build() async {
    print("Sizga tavarlar ro'yxati taqdim qilinadi".translate);
    List<Product> proList =[];
// await Future.delayed(Duration(seconds: 2));
String? result = await  NetvorServis.getData(NetvorServis.baseUrlDummyJson,NetvorServis.apiProductdDummy );
if (result != null) {
  ProdurtModel produrtModel = productModelfromJson(result);
  proList = produrtModel.products;
  
  for (var e in proList) {
    // await Future.delayed(Duration(seconds: 2));
    print(" id: ${e.id},  ${e.category}");
  }
}else{
  print("tavarlar ro'yxatini taqdim qilishda xatolik yuz berdi".translate);
}

   String? strrr = "";
  String? result1 = "";
  do {
  print("Haridni amalga oshirish uchun maxsulotni id raqamini kiriting".translate);
  stdout.write("idini kiriting: ".translate);
  String tanlovingiz = stdin.readLineSync()!;

  print("Harid qilishni xoxlaysizmi".translate);
  print("ha: 1".translate);
  print("yo'q: 2".translate);
  strrr =  stdin.readLineSync();
 
  for (var e in proList) {
    // print(e.id);
    if (e.id.toString() == tanlovingiz) {
       result1 = await NetvorServis.postData(NetvorServis.baseUrlMok, NetvorServis.apiMok, e.toJson()); 
       break;
    }
  }if (result1 != null) {
        print("sizning  tanlovingiz amalga oshdi".translate);
      } else {
        print("ushbu mahsulot tanlavomi amalga oshmadi".translate);
      }

  } while ( strrr == "1");
  await Navigator.push(HomeMenuAdmin());
  }

}