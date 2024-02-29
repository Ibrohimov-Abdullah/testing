import 'package:dart_application_1/menu/menu.dart';
import 'package:dart_application_1/menu/user_menu.dart';
// import 'package:dart_application_1/models/product_model.dart';
import 'package:dart_application_1/models/products_model.dart';
import 'package:dart_application_1/service/io_service.dart';
import 'package:dart_application_1/service/navigator_service.dart';
import 'package:dart_application_1/service/network_service.dart';

class PostProduct extends Menu{
  @override
  Future<void> build() async{
    IoService.write("productname: ");
    String productname = IoService.read();

       IoService.write("color: ");
    String color = IoService.read();

       IoService.write("price in number: ");
    String priceS = IoService.read();
    int price = int.tryParse(priceS)!;

    Products product =  Products(productname: productname, color: color, price: price);
    String? result = await NetvorServis.postData(NetvorServis.baseUrlMok, NetvorServis.apiMok, product.toJson());
    if(result != null){
      print("qoshildi");
      Navigator.push(HomeMenuUser());
    }else{
         print("qoshilmadi");
      Navigator.push(HomeMenuUser());
    }
  }

}