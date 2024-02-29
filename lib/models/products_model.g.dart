// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Products _$ProductsFromJson(Map<String, dynamic> json) => Products(
      productname: json['productname'] as String,
      color: json['color'] as String,
      price: json['price'] as int,
    );

Map<String, dynamic> _$ProductsToJson(Products instance) => <String, dynamic>{
      'productname': instance.productname,
      'color': instance.color,
      'price': instance.price,
    };
