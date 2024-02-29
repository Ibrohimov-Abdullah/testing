import 'package:dart_application_1/menu/delete/delete.dart';
import 'package:dart_application_1/menu/menu.dart';
import 'package:dart_application_1/service/io_service.dart';
import 'package:dart_application_1/service/navigator_service.dart';
import 'package:dart_application_1/service/network_service.dart';

class DeleteUser extends Menu{
  @override
  Future<void> build()async {
   print(" ochirish uchun id ni kiriting");
   IoService.write("id: ");
   String input = IoService.read();
   String? result = await NetvorServis.delateDate(NetvorServis.baseUrlMok, NetvorServis.apiMokuser, input);
   if (result != null) {
     print("ochirildi");
     await Navigator.push(Delete());
   } else {
    print("ochirilmadi");
    await Navigator.push(Delete());
   }
  }
}