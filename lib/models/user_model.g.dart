// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Users _$UsersFromJson(Map<String, dynamic> json) => Users(
      email: json['email'] as String,
      firstName: json['firstName'] as String,
      gender: json['gender'] as String,
      id: json['id'] as int,
      image: json['image'] as String,
      lastName: json['lastName'] as String,
      token: json['token'] as String,
      username: json['username'] as String,
    );

Map<String, dynamic> _$UsersToJson(Users instance) => <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'gender': instance.gender,
      'email': instance.email,
      'username': instance.username,
      'image': instance.image,
      'token': instance.token,
    };
