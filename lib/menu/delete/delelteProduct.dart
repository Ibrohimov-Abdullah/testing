import 'package:dart_application_1/menu/delete/delete.dart';
import 'package:dart_application_1/menu/menu.dart';
import 'package:dart_application_1/service/extension_service.dart';
import 'package:dart_application_1/service/io_service.dart';
import 'package:dart_application_1/service/navigator_service.dart';
import 'package:dart_application_1/service/network_service.dart';

class DeleteProduct extends Menu{
  @override
  Future<void> build()async {
   print(" ochirish uchun id ni kiriting".translate.textBold);
   IoService.write("id: ");
   String input = IoService.read();
   String? result = await NetvorServis.delateDate(NetvorServis.baseUrlMok, NetvorServis.apiMok, input);
   if (result != null) {
     print("ochirildi".translate);
     await Navigator.push(Delete());
   } else {
    print("ochirilmadi".translate);
    await Navigator.push(Delete());
   }
  }
}