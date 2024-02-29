import 'dart:io';

import 'package:dart_application_1/menu/menu.dart';
import 'package:dart_application_1/service/io_service.dart';
import 'package:hive/hive.dart';
import 'package:path/path.dart' as path;

class Local extends Menu{
  @override
Future<void> build() async {
final String directory = path.join(Directory.current.path,"database");
// IoService.pBold(directory);
Hive.init(directory);
await Hive.openBox("G10");
final box = Hive.box("G10");
IoService.pBorder("enter your name");
String name = IoService.read();
await box.put("username", name);

  }
}
class DBService{

  static const dbName = "dbName";

  static Box box = Hive.box(dbName);

  static Future<void> storeNote(String token)async{
    await box.put("notes", token);
  }

  static Future<String> loadNotes()async{
    String stringList = box.get("notes");
    return stringList;
  }

  static Future<void> removeNote()async{
    await box.delete("notes");
  }

}
// await box.put("pass", "123wert");
// String result = await box.get("username");
// IoService.pBorder(result);