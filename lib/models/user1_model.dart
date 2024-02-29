
import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
part 'user1_model.g.dart';
List<User> allUser(String str) => List<User>.from(jsonDecode(str).map((e) => User.fromJson(e)));

@JsonSerializable()
class User{
  late String username;
  late String password;
  User({
    required this.username,
    required this.password,
  });

  factory User.fromJson(Map<String,dynamic> json) => _$UserFromJson(json);
  Map<String,dynamic> toJson() => _$UserToJson(this);
}