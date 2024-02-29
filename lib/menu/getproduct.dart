import 'package:dart_application_1/menu/getadmin.dart';
import 'package:dart_application_1/menu/menu.dart';
import 'package:dart_application_1/service/navigator_service.dart';
import 'package:dart_application_1/service/network_service.dart';

class GetProduct extends Menu{
  @override
  Future<void> build() async{
   String? result = await NetvorServis.getData(NetvorServis.baseUrlMok, NetvorServis.apiMok);
  print(result);
   await Navigator.push(Get());

  }

}