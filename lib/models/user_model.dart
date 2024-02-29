import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
part'user_model.g.dart';

// import 'network_servis.dart';

Users usersMod(String str) => Users.fromJson(jsonDecode(str));
String usersModTojson(Users data) => jsonEncode(data.toJson());
@JsonSerializable()
class Users {
  late int id;
  late String firstName;
  late String lastName;
  late String gender;
  late String email;
  late String username;
  late String image;
  late String token;

  Users({
    required this.email,
    required this.firstName,
    required this.gender,
    required this.id,
    required this.image,
    required this.lastName,
    required this.token,
    required this.username
  });
  

  factory Users.fromJson(Map<String, dynamic> json) => _$UsersFromJson(json);
  Map<String, dynamic> toJson() => _$UsersToJson(this);
  // {
  //   id = json["id"];
  //   firstName = json["firstName"];
  //   lastName = json["lastName"];
  //   gender = json["gender"];
  //   email = json["email"];
  //   username = json["username"];
  //   image = json["image"];
  //   token = json["token"];
  // }
  // Map<String, dynamic> toJson() {
  //   return {
  //     "id": id,
  //     "firstName": firstName,
  //     "lastName": lastName,
  //     "gender": gender,
  //     "email": email,
  //     "username": username,
  //     "image": image,
  //     "token": token,
  //   };
  // }
}
// Future<void> malumotPost(String username, String password)async{
// Map<String,dynamic> map = {"username" : username, "password" : password};
  
//   String? aa = await NetvorServis.postData( NetvorServis.apiUser, map);
//   if (aa != null) {
//   Users users = usersMod(aa);
//     print("\tusername");
//     print("\\---------------------------------------/");
//     print("|\t Sizning malumotlaringiz\t|");
//     print("|\t Id: ${users.id}\t\t\t\t|");
//     print("|\t Username: ${users.username}\t\t|");
//     print("|\t Email: ${users.email}\t|");
//     print("|\t FirstName: ${users.firstName}\t\t|");
//     print("|\t LastName: ${users.lastName}\t\t|");
//     print("|\t Gender: ${users.gender}\t\t\t|");
//     print("|\t Image: ${users.image}\t\t|");
//     print("|\t Token: ${users.token}");
//   }
// }

// var b = '''"id": 15,
//     "username": "kminchelle",
//     "email": "kminchelle@qq.com",
//     "firstName": "Jeanne",
//     "lastName": "Halvorson",
//     "gender": "female",
//     "image": "https://robohash.org/Jeanne.png?set=set4",
//     "token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MTUsInVzZXJuYW1lIjoia21pbmNoZWxsZSIsImVtYWlsIjoia21pbmNoZWxsZUBxcS5jb20iLCJmaXJzdE5hbWUiOiJKZWFubmUiLCJsYXN0TmFtZSI6IkhhbHZvcnNvbiIsImdlbmRlciI6ImZlbWFsZSIsImltYWdlIjoiaHR0cHM6Ly9yb2JvaGFzaC5vcmcvSmVhbm5lLnBuZz9zZXQ9c2V0NCIsImlhdCI6MTcwODI2NDExNCwiZXhwIjoxNzA4MjY3NzE0fQ.eHPaTic49_mUytqJEkAGKJz9ZTKv58PlKpWQTf7dw9o"
// }''';
